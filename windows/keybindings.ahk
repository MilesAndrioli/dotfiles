; AutoHotkey v2 script
SetWorkingDir(A_ScriptDir)

; ── Virtual Desktop Accessor DLL ──────────────────────────────────
VDA_PATH := A_ScriptDir . "\VirtualDesktopAccessor.dll"
hVDA := DllCall("LoadLibrary", "Str", VDA_PATH, "Ptr")

GoToDesktopNumberProc := DllCall("GetProcAddress", "Ptr", hVDA, "AStr", "GoToDesktopNumber", "Ptr")
MoveWindowToDesktopNumberProc := DllCall("GetProcAddress", "Ptr", hVDA, "AStr", "MoveWindowToDesktopNumber", "Ptr")

GoToDesktop(num) {
    global GoToDesktopNumberProc
    DllCall(GoToDesktopNumberProc, "Int", num, "Int")
}

MoveAndFollow(num) {
    global MoveWindowToDesktopNumberProc, GoToDesktopNumberProc
    activeHwnd := WinGetID("A")
    DllCall(MoveWindowToDesktopNumberProc, "Ptr", activeHwnd, "Int", num, "Int")
    DllCall(GoToDesktopNumberProc, "Int", num, "Int")
}

; ── macOS-style navigation ────────────────────────────────────────
LCtrl & Tab::AltTab
^SC029::Send "#{Tab}"

; ── Switch to desktop (Ctrl + number) ─────────────────────────────
^1::GoToDesktop(0)
^2::GoToDesktop(1)
^3::GoToDesktop(2)
^4::GoToDesktop(3)
^5::GoToDesktop(4)

; ── Move window + follow (Ctrl + Shift + number) ─────────────────
^+1::MoveAndFollow(0)
^+2::MoveAndFollow(1)
^+3::MoveAndFollow(2)
^+4::MoveAndFollow(3)
^+5::MoveAndFollow(4)

; ── Chrome tab navigation ─────────────────────────────────────────
#HotIf WinActive("ahk_exe chrome.exe")
^q::Send "^+{Tab}"
^e::Send "^{Tab}"
#HotIf
