sub init()
    
      m.myRowListPrincipalPage = m.top.findNode("myRowListPrincipalPage")
      m.myMenubar= m.top.findNode("myMenubar")
      m.myRowListPrincipalPage.observeField("itemFocused","asignarContenidoPrincipalPage")
 

      menubarRect = m.myMenubar.boundingRect()
      centerx = (1300 - menubarRect.width) / 2
      m.myMenubar.translation = [centerx, 75]

      m.myMenubar.observeField("currentFocus","asignarBotonElegido")
      m.myMenubar.setFocus(false)
end sub


function asignarBotonElegido()
m.top.itemFocused=m.myMenubar.currentFocus
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