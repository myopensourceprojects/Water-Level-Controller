/************************************************************************
* 	Water Level COntroller using pic16F73
* 	File:   main.c
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

 __CONFIG(0x001);

int main()
{
     
   Port_Init();
   Timer_Init();
   DoReset();
   ModeChange = MODE_SWITCH;
   do {  
         if (ModeChange != MODE_SWITCH) {
             DoReset();
             ModeChange = MODE_SWITCH;
         } 
         if (MODE_SWITCH = HIGH) {
             AutoMode();
             MOTOR_ON_F = 0; 
         } else if (MODE_SWITCH == LOW){
             ManualMode();
      }
     _Delay(5);
     } while (1);    
  return 0;
}
