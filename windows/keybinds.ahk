; ── Tab Navigation ──
#HotIf WinActive("ahk_exe zen.exe") or WinActive("ahk_exe chrome.exe")
^q::Send "^+{Tab}"
^e::Send "^{Tab}"
#HotIf

; ── Line Jumpers ──
#Left::Send "{Home}"
#Right::Send "{End}"
#+Left::Send "+{Home}"
#+Right::Send "+{End}"

; ── App Launching ──
!b::Run "zen.exe"
!m::Run 'chrome.exe --app="https://open.spotify.com"'
!c::Run "zed.exe"
!f::Run "explorer.exe"
!t::Run "wt.exe"
