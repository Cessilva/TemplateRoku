sub init()
    m.top.observeField("focusedChild", "OnFocusedChild")
    m.buscarBtn = m.top.findNode("Buscar")
    m.inicioBtn = m.top.findNode("Inicio")
    m.catalogoBtn = m.top.findNode("Catalogo")
    m.generoBtn = m.top.findNode("Generos")
    m.compraRentaBtn = m.top.findNode("CompraRenta")
    m.canalesBtn = m.top.findNode("Canales")
    m.kidsBtn = m.top.findNode("Kids")
    m.userBtn = m.top.findNode("User")
    m.LayoutGroup = m.top.findNode("LayoutGroup")
    m.myRectangle = m.top.findNode("myRectangle")
    
    m.focusArray = [m.buscarBtn, m.inicioBtn, m.catalogoBtn, m.generoBtn, m.compraRentaBtn, m.canalesBtn, m.kidsBtn, m.userBtn]
    m.top.currentFocus = 0

    menubarRect = m.LayoutGroup.boundingRect()
    m.myRectangle.width=menubarRect.width
    m.myRectangle.height=menubarRect.height

    m.focusArray[m.top.currentFocus].focused = true
end sub

sub onFocusedChild()
    if m.top.isInFocusChain() and not m.focusArray[m.top.currentFocus].hasFocus() then
        m.focusArray[m.top.currentFocus].focused = true
    end if
end sub

function onKeyEvent(key as string, press as boolean) as boolean
    if press then
        if key = "down" then
            m.focusArray[m.top.currentFocus].focused = false
        else if key = "left" then
            if m.top.currentFocus <> 0 then
                m.focusArray[m.top.currentFocus].focused = false
                m.top.currentFocus --
                m.focusArray[m.top.currentFocus].focused = true
            end if
            return true
        else if key = "right" then
            if m.top.currentFocus <> 7 then
                m.focusArray[m.top.currentFocus].focused = false
                m.top.currentFocus ++
                m.focusArray[m.top.currentFocus].focused = true
            end if
            return true
        end if
    end if
    return false
end function