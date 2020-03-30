sub init()
  m.myRowListExample = m.top.findNode("myRowListExample")
  m.myRowListPageContent = m.top.findNode("myRowListPageContent")
  m.myPrincipalPage= m.top.findNode("myPrincipalPage")
  
  m.myPrincipalPage.observeField("itemFocused","asignarContenidoActualPrincipal")
  m.myRowListExample.observeField("itemFocused","asignarContenidoActual")
  m.myPrincipalPage.visible = true
  m.myRowListExample.visible = false
  m.myRowListPageContent.visible=false  
  m.myPrincipalPage.setFocus(true)

end sub

function asignarContenidoActual()
  m.myRowListPageContent.focusedPageContent=m.myRowListExample.focusedContent
end function
function asignarContenidoActualPrincipal()
  m.myRowListPageContent.focusedPageContent=m.myPrincipalPage.focusedContent
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
      m.myPrincipalPage.setFocus(false)
      m.myRowListPageContent.visible=true
      m.myRowListExample.visible = false
      m.myPrincipalPage.visible = false
    else 
      if (key="options") then 
      print key
      m.myPrincipalPage.setFocus(true)
      m.myRowListPageContent.setFocus(false)
      m.myRowListExample.setFocus(false)
      m.myRowListPageContent.visible=false
      m.myRowListExample.visible = false
      m.myPrincipalPage.visible = true
      end if  
    end if
  end if
  return handled
end function