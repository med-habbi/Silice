// @sylefeb 2022-01-10
// Adapté pour menu par album + next/prev track
// MIT license, see LICENSE_MIT in Silice repo root

#include "config.h"
#include "sdcard.h"
#include "std.h"
#include "oled.h"
#include "display.h"
#include "printf.h"
#include "fat_io_lib/src/fat_filelib.h"

#define MAX_FILES 32
#define MAX_ALBUMS 8

char tmp[256];
char tmp1[256];

int prev_btn = 0;

struct {
    char filename[256];
    int  size;
} files[MAX_FILES];
int file_count = 0;

char albums[MAX_ALBUMS][64] = {
    "/Album1",
    "/Album2",
    "/Album3",
    "/Album4",
    "/Album5",
    "/Album6",
    "/Album7",
    "/Album8"
};
int album_count    = 7;
int current_album  = 0;
int current_track  = 0;  // NOUVEAU

// ----------------------------------------------------
// SCAN DES FICHIERS DANS UN ALBUM
// ----------------------------------------------------
void scan_files_in_album(int album_idx) {
    const char *path = albums[album_idx];
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
                file_count++;
            }
        }
        fl_closedir(&dirstat);
    }
}

// ----------------------------------------------------
// FONCTIONS AUDIO SIMPLES
// ----------------------------------------------------
void clear_audio() {
    int *addr = (int*)(*AUDIO);
    while (addr == (int*)(*AUDIO)) { }
    for (int b = 0; b < 2; ++b) {
        addr = (int*)(*AUDIO);
        memset(addr, 0, 512);
        while (addr == (int*)(*AUDIO)) { }
    }
}

void click_sound() {
    FL_FILE *click = fl_fopen("/Sounds/click.raw", "rb");
    if (click != NULL) {
        while (1) {
            int *addr = (int*)(*AUDIO);
            int sz = fl_fread(addr, 1, 512, click);
            if (sz <= 0) break;
            while (addr == (int*)(*AUDIO)) { }
            if (sz < 512) break;
        }
        fl_fclose(click);
    }
}

void startup_sound() {
    FL_FILE *startup = fl_fopen("/Sounds/startup.raw", "rb");
    if (startup != NULL) {
        while (1) {
            int *addr = (int*)(*AUDIO);
            int sz = fl_fread(addr, 1, 512, startup);
            if (sz <= 0) break;
            while (addr == (int*)(*AUDIO)) { }
            if (sz < 512) break;
        }
        fl_fclose(startup);
    }
}

// ----------------------------------------------------
// LECTURE MUSIQUE AVEC NEXT/PREV
// ----------------------------------------------------
void play_music(char *path) {
    FL_FILE *music = fl_fopen(path, "rb");
    if (music == NULL) {
        display_set_cursor(0, 0);
        display_set_front_back_color(255, 0);
        printf("Fichier introuvable:\n%s\n", path);
        display_refresh();
        return;
    }

    display_set_cursor(0, 0);
    display_set_front_back_color(0, 255);
    printf("Lecture:\n%s\n", path);
    display_refresh();

    int leds    = 1;
    int dir     = 0;
    int playing = 1;
    prev_btn    = *BUTTONS;

    while (playing) {
        int *addr = (int*)(*AUDIO);
        int sz = fl_fread(addr, 1, 512, music);
        if (sz <= 0) break;

        while (addr == (int*)(*AUDIO)) {
            int btn = *BUTTONS;
            
            display_set_cursor(0, 0);
            display_set_front_back_color(0, 255);
            printf("Lecture:\n%s\n", path);
            display_refresh();

            // Chenillard
            if (leds == 128 || leds == 1) { dir = 1 - dir; }
            if (dir) leds = leds << 1;
            else     leds = leds >> 1;
            *LEDS = leds;

            // STOP (bit 1)
            if ((btn & (1 << 1)) && !(prev_btn & (1 << 1))) {
                click_sound();
                playing = 0;
                break;
            }

            // PAUSE (bit 2)
            if ((btn & (1<<2)) && !(prev_btn & (1<<2))) {
                click_sound();
                int pause = 1;
                while(pause){
                    memset(display_framebuffer(), 0x00, 20 * 5);
                    display_set_cursor(0, 0);
                    display_set_front_back_color(0, 255);
                    printf("PAUSE     \n");
                    printf("                        \n");
                    display_refresh();
                    
                    int btn = *BUTTONS;
                    if ((btn & (1<<2)) && !(prev_btn & (1<<2))) {
                        click_sound();
                        pause = 0;
                    }
                    prev_btn = btn;
                }
            }

            // NEXT TRACK (bit 5)
            if ((btn & (1 << 5)) && !(prev_btn & (1 << 5))) {
                click_sound();
                current_track = (current_track + 1) % file_count;
                fl_fclose(music);
                return;  // Sort pour jouer la piste suivante
            }

            // PREVIOUS TRACK (bit 6)
            if ((btn & (1 << 6)) && !(prev_btn & (1 << 6))) {
                click_sound();
                current_track = (current_track - 1 + file_count) % file_count;
                fl_fclose(music);
                return;  // Sort pour jouer la piste précédente
            }

            prev_btn = btn;
        }

        if (sz < 512) break;
    }

    fl_fclose(music);
    *LEDS = 0;
}

// ----------------------------------------------------
// MENU DE SELECTION D'ALBUM
// ----------------------------------------------------
int select_album() {
    int selected = 0;
    int running  = 1;
    prev_btn     = *BUTTONS;

    while (running) {
        memset(display_framebuffer(), 0x00, 128 * 128);
        display_set_cursor(0, 0);
        display_set_front_back_color(0, 255);
        printf("=== Albums ===\n\n");

        for (int i = 0; i < album_count; ++i) {
            if (i == selected) {
                display_set_front_back_color(0, 255);
            } else {
                display_set_front_back_color(255, 0);
            }
            printf("%s\n", albums[i]);
        }
        display_refresh();

        int btn = *BUTTONS;

        if ((btn & (1 << 4)) && !(prev_btn & (1 << 4))) {
            selected++;
            if (selected >= album_count) selected = 0;
            click_sound();
        }

        if ((btn & (1 << 3)) && !(prev_btn & (1 << 3))) {
            selected--;
            if (selected < 0) selected = album_count - 1;
            click_sound();
        }

        if ((btn & (1 << 2)) && !(prev_btn & (1 << 2))) {
            click_sound();
            current_album = selected;
            running = 0;
        }

        prev_btn = btn;
        pause(50000);
    }

    return current_album;
}

// ----------------------------------------------------
// MENU DE SELECTION DE MUSIQUE
// ----------------------------------------------------
int select_track() {
    int selected = 0;
    int running  = 1;
    prev_btn     = *BUTTONS;

    if (file_count == 0) {
        memset(display_framebuffer(), 0x00, 128 * 128);
        display_set_cursor(0, 0);
        display_set_front_back_color(255, 0);
        printf("Aucun fichier dans:\n%s\n", albums[current_album]);
        display_refresh();
        pause(2000000);
        return -1;
    }

    while (running) {
        memset(display_framebuffer(), 0x00, 128 * 128);
        display_set_cursor(0, 0);
        display_set_front_back_color(0, 255);
        printf("=== Pistes ===\n\n");

        for (int i = 0; i < file_count; ++i) {
            if (i == selected) {
                display_set_front_back_color(0, 255);
            } else {
                display_set_front_back_color(255, 0);
            }
            printf("%s\n", files[i].filename);
        }
        display_refresh();

        int btn = *BUTTONS;

        if ((btn & (1 << 4)) && !(prev_btn & (1 << 4))) {
            selected++;
            if (selected >= file_count) selected = 0;
            click_sound();
        }

        if ((btn & (1 << 3)) && !(prev_btn & (1 << 3))) {
            selected--;
            if (selected < 0) selected = file_count - 1;
            click_sound();
        }

        if ((btn & (1 << 2)) && !(prev_btn & (1 << 2))) {
            click_sound();
            current_track = selected;  // Sauvegarde
            running = 0;
        }

        if ((btn & (1 << 0)) && !(prev_btn & (1 << 0))) {
            click_sound();
            return -1;
        }

        prev_btn = btn;
        pause(50000);
    }

    return selected;
}

// ----------------------------------------------------
// MAIN
// ----------------------------------------------------
void main() {
    f_putchar = display_putchar;

    oled_init();
    oled_fullscreen();
    memset(display_framebuffer(), 0x00, 128 * 128);
    display_refresh();

    display_set_cursor(0, 0);
    display_set_front_back_color(255, 0);
    printf("Init SD...\n");
    display_refresh();

    sdcard_init();
    fl_init();
    while (fl_attach_media(sdcard_readsector, sdcard_writesector) != FAT_INIT_OK) {
    }

    printf("SD OK.\n");
    display_refresh();
    startup_sound();

    clear_audio();

    while (1) {
        select_album();
        scan_files_in_album(current_album);
        
        int track = select_track();
        if (track < 0) continue;
        current_track = track;

        // Charger image une seule fois
        tmp1[0] = 0;
        strcat(tmp1, albums[current_album]);
        strcat(tmp1, "/cover.raw");
        FL_FILE *imgf = fl_fopen(tmp1,"rb");
        if (imgf != NULL) {
            fl_fread(display_framebuffer(), 1, 128*128, imgf);
            display_refresh();
            fl_fclose(imgf);
        }

        clear_audio();

        // BOUCLE DE LECTURE DES PISTES
        int playing_album = 1;
        while (playing_album) {
            tmp[0] = 0;
            strcat(tmp, albums[current_album]);
            strcat(tmp, "/");
            strcat(tmp, files[current_track].filename);
            
            play_music(tmp);
            
            // Si STOP pressé, sortir
            if (*BUTTONS & (1<<1)) {
                playing_album = 0;
            }
        }

        memset(display_framebuffer(), 0x00, 128 * 128);
        display_set_cursor(0, 0);
        display_set_front_back_color(255, 0);
        printf("Fin lecture.\n");
        display_refresh();
        pause(1000000);
    }
}
