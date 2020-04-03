sub init()
  m.myRowListExample = m.top.findNode("myRowListExample")
  m.myRowListPageContentPrincipalPage = m.top.findNode("myRowListPageContentPrincipalPage")
  m.myPrincipalPage= m.top.findNode("myPrincipalPage")
  m.myRowListPageContent = m.top.findNode("myRowListPageContent")

  m.myPrincipalPage.observeField("focusedContent","asignarContenidoActualPrincipal")

  m.myPrincipalPage.observeField("itemFocused","accionDeBoton")
  m.myRowListExample.observeField("itemFocused","asignarContenidoActual")
  m.myPrincipalPage.visible = true
  m.myRowListExample.visible = false
  m.myRowListPageContent.visible=false  
  m.myRowListPageContentPrincipalPage.visible=false 
  m.myPrincipalPage.setFocus(true)
end sub

function asignarContenidoActual()
  m.myRowListPageContent.focusedPageContent=m.myRowListExample.focusedContent
end function
function asignarContenidoActualPrincipal()
  m.myRowListPageContentPrincipalPage.focusedPageContent=m.myPrincipalPage.focusedContent
end function

' QUITAMOS UN MOMENTO EL ONKEYEVENT
function onKeyEvent(key as String, press as Boolean) as Boolean
  handled = false
  if (press=false) then
    if (key = "OK") then
      print key
      if (m.myPrincipalPage.itemFocused[1]=1 and not m.myRowListExample.isInFocusChain())then
      m.myRowListPageContent.setFocus(false)
      m.myRowListExample.setFocus(true)
      m.myPrincipalPage.setFocus(false)
      m.myRowListPageContent.visible=false
      m.myRowListPageContentPrincipalPage.visible=false
      m.myRowListExample.visible = true
      m.myPrincipalPage.visible = false

      else if (m.myRowListExample.isInFocusChain())then
      m.myRowListPageContent.setFocus(true)
      m.myRowListExample.setFocus(false)
      m.myPrincipalPage.setFocus(false)
      m.myRowListPageContent.visible=true
      m.myRowListPageContentPrincipalPage.visible=false
      m.myRowListExample.visible = false
      m.myPrincipalPage.visible = false
      else
      m.myRowListPageContent.setFocus(false)
      m.myRowListPageContentPrincipalPage.setFocus(true)
      m.myRowListExample.setFocus(false)
      m.myPrincipalPage.setFocus(false)
      m.myRowListPageContent.visible=false
      m.myRowListExample.visible = false
      m.myPrincipalPage.visible = false
      m.myRowListPageContentPrincipalPage.visible=true
      end if 
    else if (key="options") then 
      print key
      if (m.myRowListPageContent.hasFocus() )then
      m.myPrincipalPage.setFocus(false)
      m.myRowListPageContent.setFocus(false)
      m.myRowListExample.setFocus(true)
      m.myRowListPageContent.visible=false
      m.myRowListPageContentPrincipalPage.visible=false
      m.myRowListExample.visible = true
      m.myPrincipalPage.visible = false
      else
      m.myPrincipalPage.setFocus(true)
      m.myRowListPageContent.setFocus(false)
      m.myRowListExample.setFocus(false)
      m.myRowListPageContent.visible=false
      m.myRowListPageContentPrincipalPage.visible=false
      m.myRowListExample.visible = false
      m.myPrincipalPage.visible = true
      end if
    end if
  end if
  return handled
end function