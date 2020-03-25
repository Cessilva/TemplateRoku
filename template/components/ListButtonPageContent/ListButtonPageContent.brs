sub init()
    m.top.observeField("focusedChild", "OnFocusedChild")
    m.trailerBtn = m.top.findNode("trailer")
    m.reproducirBtn = m.top.findNode("reproducir")
    m.idiomaBtn = m.top.findNode("idioma")
    m.milistaBtn = m.top.findNode("mi lista")



    m.focusArray = [ m.trailerBtn, m.reproducirBtn, m.idiomaBtn, m.milistaBtn]
    m.currentFocus = 0

    m.focusArray[m.currentFocus].focused = true
end sub

' sub onFocusedChild()
'     if m.top.isInFocusChain() and not m.focusArray[m.currentFocus].hasFocus() then
'         m.focusArray[m.currentFocus].focused = true
'     end if
' end sub

' function onKeyEvent(key as string, press as boolean) as boolean
'     if press then
'         ?"press"
'         if key = "down" then
'             ?"down"
'             m.focusArray[m.currentFocus].focused = false
'         else if key = "left" then
'             ?"left"
'             if m.currentFocus <> 0 then
'                 m.focusArray[m.currentFocus].focused = false
'                 m.currentFocus --
'                 m.focusArray[m.currentFocus].focused = true
'             end if
'             return true
'         else if key = "right" then
'             ?"right"
'             if m.currentFocus <> 6 then
'                 m.focusArray[m.currentFocus].focused = false
'                 m.currentFocus ++
'                 m.focusArray[m.currentFocus].focused = true
'             end if
'             return true
'         end if
'     end if
'     return false
' end function