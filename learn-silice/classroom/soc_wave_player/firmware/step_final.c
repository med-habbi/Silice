// @sylefeb 2022-01-10
// MIT license, see LICENSE_MIT in Silice repo root
// https://github.com/sylefeb/Silice/

#include "config.h"
#include "sdcard.h"
#include "std.h"
#include "oled.h"
#include "display.h"
#include "printf.h"

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

void clear_audio()
{
  // wait for a buffer swap (sync)
  int *addr = (int*)(*AUDIO);
  while (addr == (int*)(*AUDIO)) { }
  // go ahead
  for (int b=0 ; b<2 ; ++b) {
    // read directly in hardware buffer
    addr = (int*)(*AUDIO);
    // clear buffer
    memset(addr,0,512);
    // wait for buffer swap
    while (addr == (int*)(*AUDIO)) { }
  }
}

void main()
{
    int music_select = 1;
     int selected = 0;
  int prev_btn = 0;
  // install putchar handler for printf
  f_putchar = display_putchar;
  // initialize oled screen
  oled_init();
  oled_fullscreen();
  // clear framebuffer
  memset(display_framebuffer(),0x00,128*128);
  display_refresh();

  display_set_cursor(0,0);
  display_set_front_back_color(255,0);
  printf("init ... ");
  display_refresh();

  // init sdcard and FAT library
  sdcard_init();
  fl_init();
  while (fl_attach_media(sdcard_readsector, sdcard_writesector) != FAT_INIT_OK) {
    // retry until ready
  }
  printf("done.\n");
  display_refresh();

//   // open and show image
//   FL_FILE *imgf = fl_fopen("/img.raw","rb");
//   if (imgf == NULL) {
//     printf("img.raw not found.\n");
//     display_refresh();
//   } else {
//     printf("image found.\n");
//     display_refresh();
//     fl_fread(display_framebuffer(),1,128*128,imgf);
//     display_refresh();
//     fl_fclose(imgf);
//   }

  // prepare audio buffers
  clear_audio();
  scan_files();
  while (music_select){
 
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
  if (btn & (1<<2)) {
      music_select = 0;
      break;
  }
  
  pause(50000);
}
char tmp[128];
tmp[0]=0;

// open and play audio file
//FL_FILE *music = fl_fopen(files[selected].filename,"rb");
strcat(tmp,"/");
strcat(tmp,files[selected].filename);
FL_FILE *music = fl_fopen(tmp,"rb");
if (music == NULL) {
  //printf("music not found.\n");
  printf(files[selected].filename);
  display_refresh();
} else {
  printf("playing ...\n");
  display_refresh();
  while (1) {
    
      // get pointer to current hardware audio buffer
      int *addr = (int*)(*AUDIO);
      // read up to 512 bytes directly into hardware buffer
      int sz = fl_fread(addr,1,512,music);
      if (sz <= 0) break; // EOF or error
      // wait until hardware swaps buffer (so it consumes what we just wrote)
      while (addr == (int*)(*AUDIO)) { }
      // if we read less than a full block, we've reached EOF -> stop
      if (sz < 512) break;
    }
    fl_fclose(music);
  }

  // finished
  printf("done.\n");
  display_refresh();

  // idle
  for (;;) { pause(1000000); }
}