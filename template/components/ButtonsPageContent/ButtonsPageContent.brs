sub init()
    m.buttonText = m.top.findNode("buttonText")
    m.buttonText.font.size="16"
    m.buttonIcon = m.top.findNode("buttonIcon")
    m.mainRectangle = m.top.findNode("mainRectangle")
    m.frame = m.top.findNode("frame")
    m.bg = m.top.findNode("bg")
    centery = (m.frame.height-m.buttonIcon.height) / 2
    centerx = (m.frame.width-m.buttonIcon.width) / 2
    m.buttonIcon.translation = [centerx, centery]
end sub

sub showcontent()
  itemcontent = m.top.itemContent
  m.buttonIcon.uri = itemcontent.SDPosterUrl
  m.buttonText.text= itemcontent.title
end sub

sub onFocusChange()
    ?"onFocusChange"
    if m.top.itemHasFocus then
        m.frame.visible = true
        m.buttonText.opacity = 1
        m.mainRectangle.color = "#2f6997"
        m.bg.color="#2f6997"
    else
        m.frame.visible = false
        m.buttonText.opacity = 0.3
        m.mainRectangle.color = "#25415a"
        m.bg.color="#25415a"
    end if
end sub

