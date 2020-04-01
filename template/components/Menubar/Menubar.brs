sub init()
    m.rowlistMenubar = m.top.findNode("myRowListMenubar")
    lista=[
        {
            titulo:" "
            url:"pkg:/images/ordenador-portatil.png"
        }
        {
            titulo:"Inicio"
            url:"pkg:/images/transparente.png"
        }
        {
            titulo:"Catalogo"
            url:"pkg:/images/transparente.png"
        }
        {
            titulo:"Generos"
            url:"pkg:/images/transparente.png"
        }
        {
            titulo:"Compra y Renta"
            url:"pkg:/images/transparente.png"
        }
        {
            titulo:"Canales"
            url:"pkg:/images/transparente.png"
        }
        {
            titulo:" "
            url:"pkg:/images/mas.png"
        }
        {
            titulo:" "
            url:"pkg:/images/mas.png"
        }
    ]
    content=parseContent(lista)
    m.rowlistMenubar.content= content
    m.top.observeField("focusedChild","OnFocusedChildChange")
end sub

function parseContent(lista as object)
    ContentNode_object = createObject("RoSGNode","ContentNode")
    ContentNode_object_child = createObject("RoSGNode","ContentNode")
    ContentNode_object_child.Title="Botones"
    for each item in lista
        elemento=createObject("RoSGNode","ContentNode")
        elemento.Title=item.titulo
        elemento.SDPosterUrl=item.url
        ContentNode_object_child.appendChild(elemento)
    end for
    ContentNode_object.appendChild(ContentNode_object_child)
    return ContentNode_object
end function

sub OnFocusedChildChange()
    ? "[GridScreen] >> OnFocusedChildChange"
    if m.top.isInFocusChain() and not m.rowlistMenubar.hasFocus() then
        m.rowlistMenubar.setFocus(true)
    end if
end sub

