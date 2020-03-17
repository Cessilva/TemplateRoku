sub init()
  m.myRectangulo = m.top.findNode("myRectangulo")
  m.myRectangulo.visible = true
  m.myJson = m.top.findNode("myJson")
  m.myJson.visible = false
  m.myRectangulo.SetFocus(true)
end sub

function onKeyEvent(key as string, press as boolean) as boolean
  if press then
    if key = "up"
      print key
      m.myRectangulo.visible = true
      m.myJson.visible = false
    else if key = "OK"
      print key
      m.myRectangulo.visible = false
      m.myJson.visible = true
      return true
    end if
  end if
return false
end function