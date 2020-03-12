sub init()
    m.myRectangulo = m.top.findNode("myRectangulo")
    m.myRectangulo.SetFocus(true)
end sub

 function onKeyEvent(key as String, press as Boolean) as Boolean
    print "holiiii"
      if press then
        if (key = "OK") then 
          if (m.myRectangulo.visible = true)
            print "ya entre"
            m.myRectangulo.visible = false
          else
            m.myRectangulo.visible = true
          endif
          return true
        end if
      end if
      return false
end function

sub loadContent()
    m.top.gridContent = m.contentHandler.content
end sub

