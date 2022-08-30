#IfWinActive ELDEN RING

; Roll bind breakout. Makes space an instant roll on key press (game does it on release.... sighlol) 
; and uses Alt as "hold to sprint."
; First set up Alt so it does what vanilla Space does....
*Alt::Space

; ...and now make it so the spacebar executes the roll the instant it's tapped.
; TL;DR tap space to roll, hold alt to sprint, don't hold spacebar any more
*Space::
	Send {Space down}
	Sleep 15
	Send {Space up}
	KeyWait, Space
return

; Mapping map, and parry. The brackets are what I've remapped my "extra" mouse buttons to since my
; current mouse's buttons 4 and up aren't being autodetected by the game.
; Since Elden Dingbat does not seem to bother accepting "mouse4" for binds, I have used mouse driver
; software to remap my mousebutton to standard keyboard key sends; then use those keys (brackets, etc)
; as Elden Dingbat commands. Also M is Map you From Software goofballs.
; So the mouse button under my thumb sends a [ character and this changes it to the ER parry/skill.

*m::g
*[::Ctrl

; Fake autorun using a different mouse thumb button, this just sends "i'm holding down W"
*]:: Send % "{Blind}{w " . (GetKeyState("w") ? "Up}" : "Down}")

; Wield swap (1H / 2H) using remapped DPI UP and DPI DOWN mouse index finger buttons
; in mouse driver software - just remapped DPI Up/Down to numpad * and - respectively
; So now the below will turn those buttons into the default ER key combos
*NumpadMult::
	Send {e down}
	Sleep 15
	Send {LButton down}
	Sleep 15
	Send {e up} {LButton up}
return

*NumpadSub::
	Send {e down}
	Sleep 15
	Send {RButton down}
	Sleep 15
	Send {e up} {RButton up}
return

; Sometimes I wonder if FromSoft writes their code with xbox controllers :P
; fyi, the plus sign is an AHK shortcut for "while holding shift"
; So, above I made two of my extra mouse buttons a shortcut for 1h/2h swap (left and right weapons each)
; The below makes SHIFT+(those mouse buttons) into spell and item select cycle - because ain't nobody
; usin' mouse and keyboard gonna wanna move their hands to the arrow keys in a fight FFS
+NumpadMult::Up
+NumpadSub::Down

; Pouch items using F keys, where i can reach them with my WASD hand, instead of this goofy
; arrow-key-combo stuff they had goin' on
*F1::
	Send {e down} 
	Sleep 15 
	Send {Up down}
	Sleep 15
	Send {e up} {Up up}
	Keywait, F1
return

*F2::
	Send {e down} 
	Sleep 15 
	Send {Left down}
	Sleep 15
	Send {e up} {Left up}
	Keywait, F2
return

*F3::
	Send {e down} 
	Sleep 15 
	Send {Right down}
	Sleep 15
	Send {e up} {Right up}
	Keywait, F3
return

*F4::
	Send {e down} 
	Sleep 15 
	Send {Down down}
	Sleep 15
	Send {e up} {Down up}
	Keywait, F4
return

; Th- th- th- that's all, folks! Now go spend 75 seconds running back to the boss
; so you can die in two hits again.
