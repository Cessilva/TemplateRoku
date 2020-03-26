sub init()
    m.rowlistButton = m.top.findNode("myRowListButton")
    lista=[
        {
            titulo:"Trailer"
            url:"pkg:/images/ordenador-portatil.png"
        }
        {
            titulo:"Reproducir"
            url:"pkg:/images/ordenador-portatil.png"
        }
        {
            titulo:"Idioma"
            url:"pkg:/images/ordenador-portatil.png"
        }
        {
            titulo:"Mi lista"
            url:"pkg:/images/ordenador-portatil.png"
        }
    ]
    content=parseContent(lista)
    m.rowlistButton.content= content
    m.top.observeField("focusedChild","OnFocusedChildChange")
    m.top.setFocus(true)
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
    if m.top.isInFocusChain() and not m.rowlistButton.hasFocus() then
        'm.rowlistButton.setFocus(true)
    end if
end sub

sub OnItemFocused()
    itemFocused = m.top.itemSimpleFocused
    'print m.top.content.getChild(itemFocused[0]).getChild(itemFocused[1])
    if itemFocused.count() = 2 then
        focusedContent = m.top.content.getChild(itemFocused[0]).getChild(itemFocused[1])
        if focusedContent <> invalid then
            m.top.focusedButton = focusedContent
        end if
    end if
end sub
