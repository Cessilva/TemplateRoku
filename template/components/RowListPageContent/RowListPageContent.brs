sub init()
      m.myContentPageContent = m.top.findNode("myContentPageContent")
      m.myRowListSimple = m.top.findNode("myRowListSimple")



end sub

function pasarContenidoContentPageContent()
      m.myContentPageContent.content= m.top.focusedPageContent
end function
' function onKeyEvent(key as String, press as Boolean) as Boolean
'   print press
'   handled = false
'   if (press=false) then
'     if (key = "OK") then
'       print key
'       if not m.myRowListPageContent.hasFocus() then
'           m.myRowListPageContent.setFocus(true)
'       end if
'       m.myRowListPageContent.visible=true
'       m.myRowListExample.visible = false
'     else 
'       if (key="options") then 
'       print key
'        if not m.myRowListExample.hasFocus() then
'           m.myRowListExample.setFocus(true)
'       end if
'       m.myRowListPageContent.visible=false
'       m.myRowListExample.visible = true
'       end if  
'     end if
'   end if
'   return handled
' end function