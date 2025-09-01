; --------- GLOBAL REMAPS ---------

<^Tab::AltTab             ; Ctrl+Tab → Alt+Tab (switch between apps)

<^1::#^Left               ; Ctrl+1 → Win+Ctrl+Left (move virtual desktop left)
<^2::#^Right              ; Ctrl+2 → Win+Ctrl+Right (move virtual desktop right)
<^`::#Tab                 ; Ctrl+` → Win+Tab (task view)

#b::Run "chrome.exe"      ; Win+B → launch browser 
#e::Run "Cursor.exe"      ; Win+E → launch text editor
#t::Run "Warp.exe"        ; Win+T → launch terminal 

; --------- APP-SPECIFIC REMAPS ---------

#HotIf WinActive("ahk_exe chrome.exe")
<^e::^Tab                 ; Ctrl+E → Ctrl+Tab (next tab)
<^q::^+Tab                ; Ctrl+Q → Ctrl+Shift+Tab (previous tab)
#HotIf