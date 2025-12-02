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

void main()
{
    int inc_per_cycle=(1<<24)/ 56818;
 *SNDGEN = (inc_per_cycle <<8)| 255;

}
