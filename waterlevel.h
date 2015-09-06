/************************************************************************
* 	Water Level Controller using pic16F73
* 	File:   waterlevel.h
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

#ifndef 	_WATERLEVEL_H_
#define		_WATERLEVEL_H_

#define	MOTOR_ON_LED RB0 /* YELLOW - Motor on LED */
#define ACT_LED	     RB1 /* GREEN  - Indicate Auto/Maual Mode */ 
#define ERROR_LED    RB2 /* RED    - Well Empty /Dry Run*/
#define BUZZER	     RB3 
#define	MOTOR	     RB4 /* To 12V Relay */

#define	TANK_EMPTY	 RC0 /* Float switch - Tank LOW */
#define	TANK_FULL	 RC1 /* Float switch - Tank High */
#define	WELL_EMPTY	 RC2 /* Float switch - Well LOW : Should be always high */
#define MODE_SWITCH  RC3 /* Auto Manual Mode selection */
#define MOTOR_ON	 RC4 /* Maual Mode Motor Start/Stop switch */

#define	HIGH 	1
#define	LOW		0
#define	ON  	1
#define	OFF 	0
#define	YES 	1
#define	NO	 	0


char count = 0, MOTOR_ON_F = 0, BuzzerON = 0, 
				BeepCnt, ModeChange, BuzzerON_F = 1, ONReset = 0, ERR_LED;

static void interrupt _isr(void); 
void _Delay(int delay_val);
void Timer_Init();
void Port_Init();
void AutoMode(void);
void ManualMode(void);
void DoReset(void);
void Beep(char cnt);

#endif /* _WATERLEVEL_H_ */
