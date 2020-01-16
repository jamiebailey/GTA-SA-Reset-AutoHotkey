#SingleInstance force

; GTA San Andreas Auto Reset Tool
;
; Install:
; 1. Place this file inside the GTA:SA root directory.
; 2. Configure the Variables below
; 3. Launch the script and enjoy :)
;

; Variables
STARTKEY=]
EXITKEY=[
PROCESS=gta-sa.exe

; Hotkeys
Hotkey,%STARTKEY%,Reset
Hotkey,%EXITKEY%,Stop
Return

; Actions
Reset:
Process, Close, %PROCESS%
Sleep, 100
Run, %PROCESS% -skip
Return

Stop:
ExitApp