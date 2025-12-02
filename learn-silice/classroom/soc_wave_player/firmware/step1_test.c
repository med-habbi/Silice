// @sylefeb 2022-01-10
// MIT license, see LICENSE_MIT in Silice repo root
// https://github.com/sylefeb/Silice/

// Once Step 1 completed, this firmware produces a varying tune
// that can be listened to on the audio port

// ==================================================================
// ** WARNING ** High-pitch high-volume sounds! Do NOT use headphones!
// ==================================================================

#include "config.h"
#include "std.h"
#include <stdbool.h>



void main()
{
  int inc_per_cycle=(1<<24)/ 56818;

 bool vol = false;
 int ampl=0;
while(1){ 
    //*SNDGEN = (inc_per_cycle <<8)| ampl;

    //ajuster le volume avec les boutons
// *LEDS = 1<<1;
//     if (*BUTTONS & (1<<3)) {
//         vol= !vol;
//         *LEDS = 1<<2;
//         }  
//         if(vol){
//             ampl=255;
//         }else{
//             ampl=0;
//         }
//        *LEDS = 1<<4;
//     }
 
// ajuster frequence avec les boutons
*SNDGEN = (inc_per_cycle <<8)| 255;
    if (*BUTTONS & (1<<4)) {
        inc_per_cycle+= (1<<24)/ 56818;
        *LEDS = 1<<5;
        }  
        if (*BUTTONS & (1<<5)) {
        inc_per_cycle-= (1<<24)/ 56818;
        *LEDS = 1<<6;
        } 
        if (*BUTTONS & (1<<3)) {
//         vol= !vol;
//         *LEDS = 1<<2;
//         }  
    pause(100000);
}
}
