sub init()
  m.myRowListExample = m.top.findNode("myRowListExample")
  m.myRowListPageContent = m.top.findNode("myRowListPageContent")
  
  m.myRowListExample.visible = true
  m.myRowListPageContent.visible=false

   m.myRowListExample.SetFocus(true)
end sub

' QUITAMOS UN MOMENTO EL ONKEYEVENT
function onKeyEvent(key as String, press as Boolean) as Boolean
  print press
  handled = false
  if (press=false) then
    if (key = "OK") then
      print key
      m.myRowListExample.visible = false
      m.myRowListPageContent.visible=true
    else 
      if (key="options") then 
      print key
      m.myRowListExample.visible = true
      m.myRowListPageContent.visible=false
      end if  
    end if
  end if
  return handled
end function