
;;; 
;;; 
;;;  https://freebitco.in/?r=12403380
;;; 
;;; 

;;; 
;;; 
;;;  Coordinates for ThinkPad
;;; 
;;; 					      X		  Y
;;;  FREE BTC			  545		110
;;;  MULTIPLY BTC		650		110
;;;  EARN BTC			  750		110
;;;  LOTERRY		  	840		110
;;;  REWARDS		  	925		110
;;;  REFER		  		1000	110
;;;  FAQ			    	1050	110
;;;  PROFILE		  	1120	110
;;;  STATS			  	1200	110
;;; 
;;;  ROLL BUTTON		760		760
;;; 
;;; 

;;; 
;;; 
;;; Get mouse position
;;; 
;;; 

#include <Misc.au3>

HotKeySet("{END}", "_Quit") ; Hit "END" to quit

$dll = DllOpen("user32.dll")
While 1
    If _IsPressed("01", $dll) Then
        $avMousePos = MouseGetPos()
        ToolTip("x = " & $avMousePos[0] & "  y = " & $avMousePos[1])
    EndIf
WEnd

Func _Quit()
    DllClose($dll)
    Exit
EndFunc   ;==>_Quit


;;; 
;;; 
;;; Collect every hour
;;; 
;;; 


Global $paused
HotKeySet( "{PAUSE}", "TogglePause")
HotKeySet("{END}", "_Quit") ; Hit "END" to quit




While 1

   ShellExecuteWait("chrome.exe", "https://freebitco.in/?op=home --start-maximized")

   Opt("WinTitleMatchMode", 2) ; Configures AutoIt to find a search term in any part of the window title
   WinActivate("FreeBitco.in") ; Activates the Word window with hello.docx (or hello.doc) in any part of the title bar
   WinWaitActive("FreeBitco.in") ; Waits for the window to be the active window

   MouseClick("left", 758, 777) ;;;left clicks 759 761
   Sleep(2000)   ;;;Waits for function call
   Send("{PGDN}") ; Presses the DOWN key 4 times
   Sleep(2000)   ;;;Waits for function call
   MouseClick("left", 758, 777) ;;;left clicks 759 76
   Sleep(8000)   ;;;Waits for function call
   Send("{ESC}") ; Presses the ESC
   Sleep(3000)   ;;;Waits for function call
   Send ("^w") ; Presses control + w to close window
   Sleep(3590000)
Wend


Func TogglePause()
    $paused = Not $paused
    While $paused
        Sleep(100)
        ToolTip('awesomestme', 100, 100);Not nessesary but i like the tool tip
    WEnd
 EndFunc

 Func _Quit()
    DllClose($dll)
    Exit
EndFunc   ;==>_Quit

