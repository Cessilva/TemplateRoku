sub init()
      m.myContentPageContent = m.top.findNode("myContentPageContent")
      m.myListButtonPageContent= m.top.findNode("myListButtonPageContent")
      m.myRowListSimple = m.top.findNode("myRowListSimple")
end sub

function pasarContenidoContentPageContent()
      m.myContentPageContent.content= m.top.focusedPageContent
end function

function onKeyEvent(key as String, press as Boolean) as Boolean
  print press
  handled = false
  if (press=false) then
    if (key = "down") then
      print key
      if not m.myRowListSimple.hasFocus() then
          m.myRowListSimple.setFocus(true)
      end if 
    else 
      if  (key = "up") then
        print key
        if not m.myListButtonPageContent.hasFocus() then
            m.myListButtonPageContent.setFocus(true)
        end if   
      end if     
    end if
  end if
  return handled
end function