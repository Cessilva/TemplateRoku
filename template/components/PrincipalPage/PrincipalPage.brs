 sub init()
      m.rowlist = m.top.findNode("myRowListPrincipal")
      m.readRowListExampleTask = createObject("roSGNode","RowListExampleTask")
      m.readRowListExampleTask.control = "RUN"
      m.readRowListExampleTask.observeField("content", "showpostergrid")
      m.rowlist.content= m.readRowListExampleTask.content
      
      m.top.observeField("visible", "OnVisibleChange")
      m.top.observeField("focusedChild","OnFocusedChildChange")


    end sub
    
sub OnFocusedChildChange()
    ? "[GridScreen] >> OnFocusedChildChange"
    'is.InFocusChain: Comprueba si el nodo sujeto o alguno de sus descendientes 
    'en el árbol de nodos SceneGraph tienen foco de control remoto.

    'hasFocus:Comprueba si el nodo sujeto tiene el foco de control remoto.

    'Si el nodo tiene el foco del control remoto pero no el foco, se lo establece en true
    if m.top.isInFocusChain() and not m.rowList.hasFocus() then
        m.rowList.setFocus(true)
    end if
end sub

'itemFoscused: Es un campo de RowList y lo que devuelve es un arreglo 
'de la posicion que se esta enfocando:
'[2 0] si esta en la fila dos, del primer elemento

'count():Funcion que cuenta los elementos de un arreglo
'.getChild():Returns the child node specified by the index.

'Trae el contenido de los indices que se pide y se lo asigna a focusedContent
'm.top.content.getChild(itemFocused[0]).getChild(itemFocused[1])
sub OnItemFocused()
    itemFocused = m.top.itemFocused
    'print m.top.content.getChild(itemFocused[0]).getChild(itemFocused[1])
    if itemFocused.count() = 2 then
        focusedContent = m.top.content.getChild(itemFocused[0]).getChild(itemFocused[1])
        if focusedContent <> invalid then
            m.top.focusedContent = focusedContent
            
        end if
    end if
end sub

sub OnVisibleChange()
    if m.top.visible = true then
        m.rowList.setFocus(true)
    end if
end sub
