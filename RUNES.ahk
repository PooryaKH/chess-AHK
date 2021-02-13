#include fastPixelGetColor.ahk

*e::
CoordMode, Mouse, Screen
updateFastPixelGetColor()
MouseGetPos, MouseX, MouseY
color := fastPixelGetColor(MouseX, MouseY)
MsgBox %color%
return

F3::
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
updateFastPixelGetColor()
X := 500
Y := 500
c := 500
u := 500
while ( color != "2829873" )
{

	color := fastPixelGetColor(X, 500)
	X := X - 1

}
X++
MouseMove X,500
MsgBox
color := 0
while ( color != "2829873" )
{

	color := fastPixelGetColor(500, Y)
	Y := Y - 1

}
Y++
MouseMove 500,Y
MsgBox
color := 0
while ( color != "2829873" )
{

	color := fastPixelGetColor(c, 500)
	c++

}
c--
MouseMove c,500
MsgBox
color := 0
while ( color != "2829873" )
{

	color := fastPixelGetColor(500, u)
	u++

}
u--
MouseMove 500,u
MsgBox
MsgBox %X%x%Y%-%c%x%u%
return

f12::
Suspend,Toggle
return
f11::
ExitApp