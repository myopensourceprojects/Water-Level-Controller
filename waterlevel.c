/************************************************************************
* 	Digital clock using pic16F73
* 	File:   waterlevel.c
* 	Author:  Jithin Krishnan.K
*   Rev. 0.0.1 : 12/06/2015 :  08:31 PM
* 
*	This program is free software: you can redistribute it and/or modify
*  	it under the terms of the GNU General Public License as published by
*  	the Free Software Foundation, either version 3 of the License, or
*	(at your option) any later version.
*
*	This program is distributed in the hope that it will be useful,
*	but WITHOUT ANY WARRANTY; without even the implied warranty of
*	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*	GNU General Public License for more details.
*
*	You should have received a copy of the GNU General Public License
*	along with this program.  If not, see <http://www.gnu.org/licenses/>.
*
*	Email: jithinkrishnan.k@gmail.com
*   
************************************************************************/

#include <pic.h>
#include "waterlevel.h"

static void interrupt _isr(void)
	{
	  if(count == 30) {
	      count = 0; 
          if (MODE_SWITCH && !ONReset) 
	      ACT_LED = ~ACT_LED;
          else
          ACT_LED = ON;

         if (BuzzerON == 1)
          BUZZER = ~BUZZER;
          else
          BUZZER = OFF;
          
          if (ERR_LED)
              ERROR_LED = ~ERROR_LED; 
          else 
              ERROR_LED = 0;
	   }
          
     
	      count++;  
	      TMR0 = 6;
	      T0IF = 0;
	} 

void Timer_Init() 
  {
     OPTION = 0x05;
     TMR0 = 6;
	 T0IE = 1;
     GIE = 1;
  }

void _Delay(int delay_val)
  {
     int i, j;
	 for(i = 0; i < delay_val; i++)
	 for(j = 0;j < 1000; j++);
 }

void Port_Init()
  {  
     TRISB = 0x00;
     TRISC = 0x1F;
  }

void AutoMode(void)  /* Auto mode */
 {
       
           if (WELL_EMPTY == HIGH) { /* Well is having enough water */
              ERR_LED = OFF; 
              BuzzerON = OFF;
              BuzzerON_F = 1;  
             if (TANK_EMPTY == LOW && TANK_FULL == LOW) {
              MOTOR = ON; 		 /* Motor ON */
              MOTOR_ON_LED = ON; 
              } else if (TANK_EMPTY == HIGH && TANK_FULL == HIGH) {
              MOTOR = OFF;       /* Motor OFF */
              MOTOR_ON_LED = OFF;
		    }
        } else if (WELL_EMPTY == LOW) {
                 MOTOR = OFF;    /* Motor OFF */
                 MOTOR_ON_LED = OFF;
				 ERR_LED = ON;

                 while(MOTOR_ON) { /* Reset ALARAM */
                  BuzzerON_F = 0;
                 }
                 if(BuzzerON_F == 1)
                   BuzzerON = ON;
                 else 
                   BuzzerON = OFF;
            }
 } 

void ManualMode(void) /* Manual Mode */
{
              
         if (WELL_EMPTY == HIGH) { /* Well is having enough water */
             ERR_LED = OFF;
             BuzzerON = OFF;
			 BuzzerON_F = 1;
             while(MOTOR_ON) {
               BuzzerON = ON;
              _Delay(15);
               BuzzerON = OFF;
               MOTOR_ON_F = 1;
             }  
               
          if (MOTOR_ON_F == HIGH && TANK_FULL == LOW ) {
              MOTOR = ON; 		 /* Motor ON */
              MOTOR_ON_LED = ON;
            } else if (MOTOR_ON_F == HIGH && TANK_FULL == HIGH) {
              MOTOR = OFF;       /* Motor OFF */
              MOTOR_ON_F = 0;
              MOTOR_ON_LED = OFF;
            }
              
        } else if (WELL_EMPTY == LOW) {
                 MOTOR = OFF;    /* Motor OFF */
                 MOTOR_ON_F = 0;
                 ERR_LED = ON;
                 MOTOR_ON_LED = OFF;

                 while(MOTOR_ON) { /* Reset ALARAM */
                  BuzzerON_F = 0;
                 }
                 if(BuzzerON_F == 1)
                   BuzzerON = ON;
                 else 
                   BuzzerON = OFF;
          }
   }


void DoReset(void)
 {       ONReset = YES;
         BuzzerON_F = 1;
         MOTOR = OFF;
 		 MOTOR_ON_LED = ON;
         ACT_LED = ON;
         ERR_LED = ON;
         Beep(1);
         MOTOR_ON_LED = OFF;
         ACT_LED = OFF;
         ERR_LED = OFF; 
         BuzzerON_F = 1;
         ONReset = NO;  
             
   } 

void Beep(char cnt) 
 {
     char i = 0;

     for (; i < cnt ; i++) {  
        BuzzerON = ON;
       _Delay(50);
	    BuzzerON = OFF;
     } 
 }