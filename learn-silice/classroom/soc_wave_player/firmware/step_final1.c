// @sylefeb 2022-01-10
// Adapté pour menu par album
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


// structure pour stocker les fichiers d'un album
struct {
    char filename[256];
    int  size;
} files[MAX_FILES];
int file_count = 0;


// liste des albums (répertoires) à la racine de la carte SD
// À TOI d'adapter ces noms à l'arborescence réelle de ta carte SD
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
// LECTURE D'UNE MUSIQUE (SIMPLE, SANS PAUSE)
// chemin complet passé en paramètre (par ex. "/Album1/track1.raw")
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


        // attente swap + gestion LEDs + bouton stop
        while (addr == (int*)(*AUDIO)) {
            int btn = *BUTTONS;
            display_set_cursor(0, 0);
            display_set_front_back_color(0, 255);
            printf("Lecture:\n%s\n", path);
            display_refresh();


            // chenillard simple
            if (leds == 128 || leds == 1) { dir = 1 - dir; }
            if (dir) leds = leds << 1;
            else     leds = leds >> 1;
            *LEDS = leds;


            if ((btn & (1 << 1)) && !(prev_btn & (1 << 1))) {
                click_sound();
                playing = 0;
                break;
            }

                if ((btn & (1<<2)) && !(prev_btn & (1<<2))) {
               click_sound();
               int pause  = 1;
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
        // affiche la liste des albums
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


        // bouton bas (ex: 1<<4)
        if ((btn & (1 << 4)) && !(prev_btn & (1 << 4))) {
            selected++;
            if (selected >= album_count) selected = 0;
            click_sound();
        }


        // bouton haut (ex: 1<<3)
        if ((btn & (1 << 3)) && !(prev_btn & (1 << 3))) {
            selected--;
            if (selected < 0) selected = album_count - 1;
            click_sound();
        }


        // bouton valider (ex: 1<<2)
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
// MENU DE SELECTION DE MUSIQUE (DANS L'ALBUM COURANT)
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
        memset(display_framebuffer(), 0x00, 128 * 128); //
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


        // bas
        if ((btn & (1 << 4)) && !(prev_btn & (1 << 4))) {
            selected++;
            if (selected >= file_count) selected = 0;
            click_sound();
        }


        // haut
        if ((btn & (1 << 3)) && !(prev_btn & (1 << 3))) {
            selected--;
            if (selected < 0) selected = file_count - 1;
            click_sound();
        }


        // valider
        if ((btn & (1 << 2)) && !(prev_btn & (1 << 2))) {
            click_sound();
            running = 0;
        }


        // retour album (ex: bouton 1<<0 si tu veux)
        if ((btn & (1 << 0)) && !(prev_btn & (1 << 0))) {
            click_sound();
            return -1; // retour au menu album
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
    // printf sur l'écran
    f_putchar = display_putchar;


    // init OLED
    oled_init();
    oled_fullscreen();
    memset(display_framebuffer(), 0x00, 128 * 128);
    display_refresh();


    display_set_cursor(0, 0);
    display_set_front_back_color(255, 0);
    printf("Init SD...\n");
    display_refresh();


    // init SD + FAT
    sdcard_init();
    fl_init();
    while (fl_attach_media(sdcard_readsector, sdcard_writesector) != FAT_INIT_OK) {
        // boucle jusqu'à ce que la SD soit prête
    }


    printf("SD OK.\n");
    display_refresh();
    startup_sound();


    clear_audio();


    while (1) {
        // 1) choisir un album
        select_album();


        // 2) scanner les fichiers de l'album choisi
        scan_files_in_album(current_album);


        // 3) choisir une piste dans cet album
        int track = select_track();
        if (track < 0) {
            // retour au menu album
            continue;
        }


        tmp[0] = 0;
        strcat(tmp, albums[current_album]);        
        strcat(tmp, "/");
        strcat(tmp, files[track].filename);        



        tmp1[0] = 0;
        strcat(tmp1, albums[current_album]);
        strcat(tmp1, "/cover.raw");


         FL_FILE *imgf = fl_fopen(tmp1,"rb");
    if (imgf == NULL) {
        printf("img.raw not found.\n");
        display_refresh();
        *LEDS = 0 << 1;
    } else {
        printf("image found.\n");
        display_refresh();
        fl_fread(display_framebuffer(),1,128*128,imgf);
        display_refresh();
        fl_fclose(imgf);
        *LEDS = 0 << 2;
    }
    display_refresh();
        clear_audio();
        play_music(tmp);


        // retour au menu après la lecture
        memset(display_framebuffer(), 0x00, 128 * 128);
        display_set_cursor(0, 0);
        display_set_front_back_color(255, 0);
        printf("Fin lecture.\n");
        display_refresh();
        pause(1000000);
    }
}