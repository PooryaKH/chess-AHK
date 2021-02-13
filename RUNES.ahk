#include fastPixelGetColor.ahk
global X := 500
global Y := 500
global c := 500
global u := 500

getBoard() {

	updateFastPixelGetColor()

	while ( color != "2829873" )
	{

		color := fastPixelGetColor(X, 500)
		X := X - 1

	}
	X++
	color := 0
	while ( color != "2829873" )
	{

		color := fastPixelGetColor(500, Y)
		Y := Y - 1

	}
	Y++
	color := 0
	while ( color != "2829873" )
	{

		color := fastPixelGetColor(c, 500)
		c++

	}
	c--
	color := 0
	while ( color != "2829873" )
	{

		color := fastPixelGetColor(500, u)
		u++

	}
	u--
}

*e::
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
updateFastPixelGetColor()
MouseGetPos, MouseX, MouseY
color := fastPixelGetColor(MouseX, MouseY)
;MsgBox %color%

getBoard()

H := (c-X)/8
W := (u-Y)/8
kx := 1
while ( kx <= 8 )
{
	ky := 1
	while (ky <= 8 )
	{
		MouseMove, X + (H * kx) - H/2, Y + (W * ky) - W/2
		MouseClick, Right
		ky++
	}
	kx++
}
return



f12::
Suspend,Toggle
return
f11::
ExitApp
