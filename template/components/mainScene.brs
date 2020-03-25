sub init()
  m.myRowListExample = m.top.findNode("myRowListExample")
  m.myRowListPageContent = m.top.findNode("myRowListPageContent")
  
  m.myRowListExample.observeField("itemFocused","asignarContenidoActual")
  m.myRowListExample.visible = true
  m.myRowListPageContent.visible=false  
  m.myRowListExample.setFocus(true)


end sub

function asignarContenidoActual()
  m.myRowListPageContent.focusedPageContent=m.myRowListExample.focusedContent
end function

' QUITAMOS UN MOMENTO EL ONKEYEVENT
function onKeyEvent(key as String, press as Boolean) as Boolean
  print press
  handled = false
  if (press=false) then
    if (key = "OK") then
      print key
      m.myRowListPageContent.setFocus(true)
      m.myRowListExample.setFocus(false)
      m.myRowListPageContent.visible=true
      m.myRowListExample.visible = false
    else 
      if (key="options") then 
      print key
      m.myRowListPageContent.setFocus(false)
      m.myRowListExample.setFocus(true)
      m.myRowListPageContent.visible=false
      m.myRowListExample.visible = true
      end if  
    end if
  end if
  return handled
end function