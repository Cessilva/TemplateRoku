sub init()
    m.buttonText = m.top.findNode("buttonText")
    m.buttonIcon = m.top.findNode("buttonIcon")
    m.mainRectangle = m.top.findNode("mainRectangle")
    m.frame = m.top.findNode("frame")
    m.bg = m.top.findNode("bg")
end sub

sub onFocusChange()
    ?"onFocusChange"
    if m.top.focused then
        m.frame.visible = true
    else
        m.frame.visible = false
    end if
end sub

sub onButtonTextChange()
    ?"onButtonTextChange"
    bTRect = m.buttonText.boundingRect()
    m.frame.height = bTRect.height + 30
    m.frame.width = bTRect.width + 18
    m.bg.height = bTRect.height + 24
    m.bg.width = bTRect.width + 12
    centery = (m.frame.height - bTRect.height) / 2
    centerx = (m.frame.width - bTRect.width) / 2
    m.buttonText.translation = [centerx, centery]
end sub

sub onButtonWidthChange()
    ?"onButtonWidthChange"
    bTRect = m.buttonText.boundingRect()
    m.frame.height = bTRect.height + 30
    m.frame.width = bTRect.width + 18
    m.bg.height = bTRect.height + 24
    m.bg.width = bTRect.width + 12
    centery = (m.frame.height - bTRect.height) / 2
    centerx = (m.frame.width - bTRect.width) / 2
    m.buttonText.translation = [centerx, centery]
end sub

sub onButtonSizeChange()
    ?"onButtonSizeChange"
    m.buttonText.font.size = m.top.textSize
end sub

sub onButtonIconChange()
    ?"onButtonIconChange"
    bIHeight = m.top.iconHeight
    bIWidth = m.top.iconWidth
    m.frame.height = bIHeight + 26
    m.frame.width = bIWidth + 18
    m.bg.height = bIHeight + 20
    m.bg.width = bIWidth + 12
    centery = (m.frame.height - bIHeight) / 2
    centerx = (m.frame.width - bIWidth) / 2
    m.buttonIcon.translation = [centerx, centery]
end sub

function onKeyEvent(key as string, press as boolean) as boolean
    result = false

    return result
end function