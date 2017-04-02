#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Hotkey,Pause,ExitTerms

InputBox,Var,% A_ScriptName, Enter the number of times to loop the code
loop, %Var%
{
farm-cacnea:
Click % RandClick(31,33)"," RandClick(546,548) ; selects level
RandSleep(10000,12000)
Click % RandClick(243,320) "," RandClick(400,420) ; clicks play ulex 1
RandSleep(5100,5500)
Click % RandClick(150,210) "," RandClick(575,600) ; clicks play to choose sides
RandSleep(11000,15000)
While True
{
PixelGetColor, color, 288,545, RGB ; Results screen
if (color = 0x010001 or color = 0x000001 or color = 0x000000) ; checks with black
{
RandSleep(1000,2000)
Click % RandClick(145,225) "," RandClick(620,640) ; clicks next 207,297 0x013168 charizard exp or 137,548 0xDB9D0C coins
RandSleep(5900,6500)
}
PixelGetColor, color, 294,174, RGB
if (color = 0x212225 or color = 0x232123) ; grey background on challenges screen
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
else ; haven't lost or won yet need to click AI button
{
RandSleep(1000,2000)
Click % RandClick(140,210) "," RandClick(575,590) ; clicks AI button
RandSleep(3500,6500)
}
}
Goto, farm-cacnea
}