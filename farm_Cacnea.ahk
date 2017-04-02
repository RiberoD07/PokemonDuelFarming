#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Hotkey,Pause,ExitTerms

InputBox,Var,% A_ScriptName, Enter the number of times to loop the code
loop, %Var%
{
farm-cacnea:
Click % RandClick(31,33)"," RandClick(546,548)
RandSleep(10000,12000)
Click % RandClick(243,320) "," RandClick(400,420) ; clicks play ulex 1
RandSleep(5100,5500)
Click % RandClick(150,210) "," RandClick(575,600) ; clicks play to choose sides
RandSleep(11000,15000)
While True
{
PixelGetColor, color, 288,545, RGB ; possible inconsistent
if (color = 0x010001 or color = 0x000001 or color = 0x000000) ; checks with black
{
RandSleep(1000,2000)
Click % RandClick(145,225) "," RandClick(620,640) ; clicks next 207,297 0x013168 charizard exp or 137,548 0xDB9D0C coins
RandSleep(5900,6500)
}
PixelGetColor, color, 294,174, RGB
if (color = 0x212225 or color = 0x232123) ; grey background on challenges word
{
RandSleep(1000,2000)
Click % RandClick(140,230) "," RandClick(620,640) ; clicks next (challenges) 54,282 challenge third star 0xF6B900
RandSleep(6300,6700)
}
PixelGetColor, color, 158,318, RGB
if color = 0x087BBC ; blue mp evolution
{
RandSleep(1000,2000)
Click % RandClick(100,160) "," RandClick(560,570) ; clicks yes for evolution
RandSleep(1000,2000)
}
PixelGetColor, color, 236,355, RGB
if color = 0xEBDC42 ; spin it yellow
{
RandSleep(1000,2000)
Click % RandClick(140,230) "," RandClick(620,640) ; spins for reward 236,355 spin it yellow 0xEBDC42 or 51,410 blue figure 0x01BAF9
RandSleep(6200,6800)
}
PixelGetColor, color, 267,357, RGB
if color = 0xF9F7F9 ;white collect spin reward
{
RandSleep(1000,2000)
Click % RandClick(140,230) "," RandClick(620,640) ; clicks next and returns to ulex screen 267,357 white 0xF9F7F9
RandSleep(6400,6900)
break
}
PixelGetColor, color, 258,226, RGB ; gem colour
if (color = 0x020102 or color = 0X000102) ; refill waits to finish
{
RandSleep(1000,2000)
Click % RandClick(210,270) "," RandClick(435,460) ; clicks no
RandSleep(750000,1000000)
Click % RandClick(150,210) "," RandClick(575,600)
}
PixelGetColor, color, 93,408, RGB ; desktop background (sidesync crashed)
if (color = 0x0B0D0C or color = 0x0C0E0D)
{	
	RandSleep(50000,90000)
	Click % RandClick(1045,1050) "," RandClick(40,50)
	PixelGetColor, color, 1713,887, RGB
	if color = 0x2CA3E1
	{
		RandSleep(2000,3000)
		Click % RandClick(1630,1650) "," RandClick(915,930)
		RandSleep(2000,3000)
		Click % RandClick(1855,1860) "," RandClick(875,885)
		RandSleep(2000,3000)
	}
}
else ; haven't lost or won yet need to click AI button
{
RandSleep(1000,2000)
Click % RandClick(140,210) "," RandClick(575,590) ; clicks AI button
RandSleep(3500,6500)
}
}
Goto, farm-cacnea
}

; return

RandSleep(x,y) {
Random, rand, %x%, %y%
Sleep %rand%
}

RandClick(a,b) 
{
Random, Out, %a%,%b%
Return Out
}
;Click % RandClick() "," RandClick(,) ;click at random x and y
ExitTerms:
ExitApp