#include <mega16a.h>
#include <delay.h>
#define LED_G PORTB.0
#define LED_Y PORTB.1
#define LED_R PORTB.2

void main(void)
{
DDRB=0xff;
PORTB=0;
while (1)
  {     
    LED_R=0;
    LED_G=1;          
    delay_ms(2000);         
    LED_G=0;
    LED_Y=1;
    delay_ms(500); 
    LED_Y=0;
    LED_R=1; 
    delay_ms(3000); 
  }
}
