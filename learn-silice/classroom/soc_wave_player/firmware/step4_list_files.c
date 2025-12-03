// @sylefeb 2022-01-10
// MIT license, see LICENSE_MIT in Silice repo root
// https://github.com/sylefeb/Silice/

#include "config.h"
#include "std.h"
#include "oled.h"
#include "display.h"
#include "printf.h"
#include "sdcard.h"

// include the fat32 library
#include "fat_io_lib/src/fat_filelib.h"

#define MAX_FILES 32

struct {
  char filename[256];
  int size;
} files[MAX_FILES];
int file_count = 0;

void scan_files() {
  const char *path = "/";
  FL_DIR dirstat;
  file_count = 0;
  
  if (fl_opendir(path, &dirstat)) {
    struct fs_dir_ent dirent;
    while (fl_readdir(&dirstat, &dirent) == 0 && file_count < MAX_FILES) {
      if (!dirent.is_dir) {
        int len = 0;
        while (dirent.filename[len] && len < 255) {
          files[file_count].filename[len] = dirent.filename[len];
          len++;
        }
        files[file_count].filename[len] = 0;
        files[file_count].size = dirent.size;
        file_count++;
      }
    }
    fl_closedir(&dirstat);
  }
}

void main()
{
  // turn LEDs off
  *LEDS = 0;
  // install putchar handler for printf
  f_putchar = display_putchar;
  // init screen
  oled_init();
  oled_fullscreen();
  oled_clear(0);
  // init sdcard
  sdcard_init();
  // initialise File IO Library
  fl_init();
  // attach media access functions to library
  while (fl_attach_media(sdcard_readsector, sdcard_writesector) != FAT_INIT_OK) {
    // keep trying, we need this
  }
  
  // scan files once
  scan_files();
  
  int selected = 0;
  int prev_btn = 0;
  
  while(1) {
    display_set_cursor(0, 0);
    display_set_front_back_color(0, 255);
    printf("    ===== files =====    \n\n");
    display_refresh();
    
    // display all files
    for (int i = 0; i < file_count; ++i) {
      if (i == selected) {
        display_set_front_back_color(0, 255); // highlight
      } else {
        display_set_front_back_color(255, 0);
      }
      printf("%s [%d bytes]\n", files[i].filename, files[i].size);
    }
    display_refresh();

    // read buttons and update selection
    int btn = *BUTTONS;
    if ((btn & (1<<4)) && !(prev_btn & (1<<4))) {
      ++selected;
    }
    if ((btn & (1<<3)) && !(prev_btn & (1<<3))) {
      --selected;
    }
    prev_btn = btn;
    
    // wrap around
    if (selected < 0) {
      selected = file_count - 1;
    }
    if (selected >= file_count) {
      selected = 0;
    }
    
    pause(50000);
  }
}
