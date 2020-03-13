sub init()
  m.myRectangulo = m.top.findNode("myRectangulo")
  m.myRectangulo.visible = true
  m.myJson = m.top.findNode("myJson")
  m.myJson.visible = false
  m.myRectangulo.SetFocus(true)
end sub

sub loadContent()
  m.top.gridContent = m.contentHandler.content
end sub

function onKeyEvent(key as string, press as boolean) as boolean
  if press then
    if key = "up"
      print key
      m.myRectangulo.visible = true
      m.myJson.visible = false
    else if key = "down"
      print key
      m.myRectangulo.visible = false
      m.myJson.visible = true
    else if key = "OK" 
      print key
      if (m.myJson.visible=false)
        if(m.myRectangulo.visible = true ) then
          m.myRectangulo.visible = false
        else
          m.myRectangulo.visible = true
        end if
      end if
      return true
    end if
  end if
return false
end function