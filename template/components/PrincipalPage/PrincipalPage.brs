sub init()
      m.myRowListPrincipalPage = m.top.findNode("myRowListPrincipalPage")
      m.myMenubar= m.top.findNode("myMenubar")
      m.myRowListPrincipalPage.observeField("itemFocused","asignarContenidoPrincipalPage")

      m.myMenubar.observeField("itemFocused","asignarBotonElegido")
end sub

' m.top.focusedContent=m.myRowListPrincipalPage.focusedContent
function asignarBotonElegido()
m.top.itemFocused=m.myMenubar.itemFocused
end function
function asignarContenidoPrincipalPage()
  m.top.focusedContent=m.myRowListPrincipalPage.focusedContent
end function
function onKeyEvent(key as String, press as Boolean) as Boolean
  handled = false
  if (press=false) then
    if (key = "down") then
      print key
      if not m.myRowListPrincipalPage .hasFocus() then
          m.myRowListPrincipalPage .setFocus(true)
      end if 
    else 
      if  (key = "up") then
        print key
        if not m.myMenubar.hasFocus() then
            m.myMenubar.setFocus(true)
        end if   
      end if     
    end if
  end if
  return handled
end function