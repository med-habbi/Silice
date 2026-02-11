#include "config.h"
#include "std.h"
#include "oled.h"

void main()
{
  oled_init();
  oled_fullscreen();
  
  // Envoi DIRECT rouge via registre OLED (bypass framebuffer)
  *OLED = 0xFF;  // byte rouge
  *OLED = 1<<9;  // data_or_command = 1 (data), enable=1
  
  while(1) pause(1000000);
  *O
}
