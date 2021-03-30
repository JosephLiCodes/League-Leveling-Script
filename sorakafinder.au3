#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
#include <ImageSearch.au3>
#include <MsgBoxConstants.au3>
$find = 0
$a = 0
$b = 0
$run = 1
$Search = 0


#cs
;-0x26371F
WinWaitActive("League of Legends (TM) Client")
While $run = 1
	$find = PixelSearch(0, 0, 1535, 863, 0x433945)
	if not @error then $run = 0
WEnd
MsgBox($MB_ICONINFORMATION, "Tutorial", "Success!")
WinWaitActive("League of Legends")
$find = _ImageSearch("champselect.png", 0, $a, $b,0)
if $find = 1 then MouseClick("left",$a,$b)
if $find = 0 then
While $run = 1
	$find = PixelSearch(0, 0, 1528, 863, 0xA3CA8B)
	if not @error then $run = 0
WEnd
#ce
	Func startapp()
		WinActivate("League of Legends")
		$find = PixelSearch(0, 0, 1528, 863, 0xA3CA8B)
		if not @error then $Search = 1
		MsgBox($MB_ICONINFORMATION, $Search, $Search)
	EndFunc

	$count = 0
	func repeat()
	while($Search = 0)
		MsgBox($MB_ICONINFORMATION, "from repeat, not startapp()", $Search)
		startapp()
	WEnd
	EndFunc
	;$find = PixelSearch(0, 0, 1535, 863, 0x433945)
WinWaitActive("Photos")
;$find = PixelSearch(0, 0, 1528, 863, 0xA3CA8B)
$find = PixelSearch(0, 0, 1535, 863, 0x465E57)
if not @error then MsgBox($MB_ICONINFORMATION, "found", "thinks game has started")
MsgBox($MB_ICONINFORMATION, "done", "done")



