#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
#include <ImageSearch.au3>
#include <MsgBoxConstants.au3>
$run = 1
$runprogram = 1
$Search = 0
$Xd = 0
$a = 0
$b = 0
$x3=0
$y3=0
$Search = 0
$x=0
$y=0
$x1=0
$y1=0
$x2=0
$y2=0
$add = 0
HotKeySet("{F5}", "Quit")
WinWaitActive("League of Legends")
	MouseClick("left",342, 159) ; clicks play
	Sleep(1000)
	MouseClick("left",374, 207) ; clicks coop vs ai
	Sleep(1000)
	MouseClick("left",682, 676) ;clicks confirm
	Sleep(3000)
	MouseClick("left",682, 676)
Func Quit()
 Exit
EndFunc
	Func startapp()
		WinActivate("League of Legends")
		MouseClick("left",767,572)
		MouseClick("left",767,502)
		Sleep(10000)
		$find = PixelSearch(0, 0, 1528, 863, 0xA3CA8B)
		if not @error then $Search = 1
	EndFunc

	$count = 0
	func repeat()
		while($Search = 0)
			Sleep(10)
			MouseClick("left",4,818)
			WinActivate("League of Legends")
			Sleep(20)
			MouseClick("left",695,414)
			Sleep(20)
	$XZ = Random(0,4,1)

	if $XZ = 1 then			MouseClick("left",342, 159) ; clicks play
	;if $XZ =1 then Sleep(20)
	;if $XZ =1 then MouseClick("left",374, 207) ; clicks coop vs ai
	;if $XZ= 1 then Sleep(20)

	;if $XZ= 1 then MouseClick("left",682, 676) ;clicks confirm

	Sleep(100)
	MouseClick("left",682, 676)
	;$Xd = _ImageSearch("pix.png", 0, $x, $y,0)
		;    if $Xd = 1 then startapp()

			if $XZ =2 then	MouseClick("left",794,429)
			if $XZ =2 then	Sleep(20)


			if $XZ =2 then	MouseClick("left",768,666)
			if $XZ =2 then	Sleep(20)

			if $XZ =2 then	MouseClick("left",694, 673)
			if $XZ =2 then	Sleep(20)


		if $XZ =2 then		MouseClick("left",768,639)
		if $XZ= 2 then		Sleep(20)

			if $XZ =1 then	MouseClick("left",682, 676) ;clicks start
		    $Xd = _ImageSearch("pix.png", 0, $x, $y,0)
		    if $Xd = 1 then startapp()

		WEnd
	EndFunc
while 1
	$Search = 0
	$run = 1
	repeat() ;seeks the q, will click accept once detected
		MouseClick("left",570, 264) ;1st
MouseClick("left",768, 607)
		MouseClick("left",570, 264) ;1st
	MouseClick("left",768, 607)
	WinActivate("League of Legends")
		MouseClick("left",643, 257)
		MouseClick("left",768, 607)
	MouseClick("left",801, 257)
	MouseClick("left",768, 607)
	MouseClick("left",801, 335)
	MouseClick("left",768, 607)
	MouseClick("left",646, 334)
	MouseClick("left",768, 607)

	Sleep(10000)
	WinActivate("League of Legends (TM) Client")
	MouseClick("left",1425,755)
	;WinWaitActive("League of Legends (TM) Client") ;waits for client to open
	While $run = 1 ;checks for loadin
	    Sleep(1000)
		MouseClick("left",1428,807)
	    MouseClick("left",1326,838)
		;MouseClick("left",687,671)
		$find = PixelSearch(0, 0, 653, 463, 0xA45FC4)
		if not @error then $run = 0
	    $Xd = _ImageSearch("pix.png", 0, $x, $y,0) ;in case of a dodge
	    if $Xd = 1 Then
			   startapp()
			   MouseClick("left",566, 257)
			   MouseClick("left",768, 607)
			   MouseClick("left",642, 262)
			   MouseClick("left",768, 607)
			   MouseClick("left",566, 257)
			   MouseClick("left",726, 257)
	    EndIf
	WEnd ;detects when load in is done
	Sleep(10000); delay so it doesn't insta start buying right as you load in
	MouseClick("left",1032,166)
	MouseClick("right",1329,848) ;click on map to make sure you are in shop!
	Sleep(1003)
	Send("s")
	sleep(1000)
	Send("y")
	Send("p")
	Sleep(100)
	MouseClick("right",468,358)
	$T200 = Random(50,200,1)
	Sleep($T200)
	MouseClick("right",613,367)
	$T201 = Random(50,200,1)
	Sleep($T201)
	MouseClick("right",483,358) ;buy starting item
    MouseClick("left",464,163) ;go to all items tab
	$T202 = Random(50,200,1)
	Sleep($T202)
	Send("p") ; buy items
	Send("^q")
	Send("a")
	MouseClick("left",1426,752)
	$T2 = Random(26000,27000,1) ;run to mid, sleep is the wait time
	Sleep(1000)
	Send("v")
	Sleep($T2)
	$S = 0
	$count = 0
	while(WinActive("League of Legends (TM) Client")) ;after you run there, once its open random movements + shops, etc
;If $count <1 then Send("B")
;If $count <1 then Send("v")

		$X1 = Random(333,1200,1)
		$Y1 = Random(105,633,1)
		$T3 = Random(0,50,1)
		Sleep($T3)
		If $count < 241 then $x3 = Random(1417,1431)
		If $count < 241 then $y3 = Random(745,755)
		If $count > 240 And $count <301 then $x3 = Random(1440,1484)
		If $count > 240 And $count <301 then $y3 = Random(704,720)
		If $count > 300 then $x3 = Random(1440,1500)
		If $count > 300 then $y3 = Random(680,720)

		MouseClick("left",$x3,$y3)
		$T3 = Random(0,50,1)
		Sleep($T3)
		MouseClick("left",$X1,$Y1)
		$T3 = Random(0,100,1)
		Sleep($T3)
		Send("^r")
		$T4 = Random(0,200,1)
		Sleep($T4)
		Send("^q")
		$T5 = Random(0,200,1)
		Sleep($T5)
		Send("^w")
		$T6 = Random(0,200,1)
		Sleep($T6)
		Send("^e")
		$T7 = Random(0,200,1)
		Sleep($T7)
		Send("q")
		$T8 = Random(0,200,1)
		Sleep($T8)
		Send("w")
		$T8 = Random(0,200,1)
		Sleep($T8)
		Send("e")
		$base = Random(0,100, 1)
		if $base <5 then Send("d")
		if $base > 95 then Send("f")
		if $base = 50 then MouseClick("right",1402,779)
		$T11 = Random(10000,11000,1)
		if $base = 50 then sleep ($T11)
		if $base = 50 then Send("b")
		$T12 = Random(10000,11000,1)
		if $base = 50 then sleep ($T12)
		if $base = 50 then Send("p")
		if $base = 50 then MouseClick("left",602,127) ;go to all items tab
		   ;if $base = 50 then MouseClick("left",595,193) ;go to all items tab
	  Sleep(1000)
	  		$T9 = Random(0,200,1)
		Sleep($T9)
	    if $base = 50 then MouseClick("right",514,282) ;buy a starter item
		if $base = 50 then MouseClick("right",513,466) ;attempt to buy a middle row item
		if $base = 50 then Send("p")
		if $base = 50 then MouseClick("left",1422,754) ;walk back to mid
		if $base = 50 then $T2 = Random(26000,27000,1)
		if $base = 50 then Sleep($T2)
		$count = $count + 1
		$T9 = Random(0,200,1)
		Sleep($T9)
		Send("p")
		$T10 = Random(50,200,1)
		$add = Random(3,7,1)
		$add *= 100
		$shoppy = Random(430,700,1)
		Sleep($T10)
		MouseClick("right",$shoppy,$add)
		$shoppy = $shoppy-100
		MouseClick("right",$shoppy,$add)
		$T10 = Random(50,200,1)
		Sleep($T10)
		Send("p")
	WEnd
	Sleep(10000)
	WinActivate("League of Legends")
	WinActivate("League of Legends")
	WinActivate("League of Legends")
	WinWaitActive("League of Legends")
	MouseClick("left",420,434) ;honor teammate
	MouseClick("left",765,663) ;accepts any missions
	Sleep(1000)
	$find = 0
	$c = 0
	$d	 = 0
	WinActivate("League of Legends")
	MouseClick("left",672,682) ; clicks play again
	WinActivate("League of Legends")
WEnd

