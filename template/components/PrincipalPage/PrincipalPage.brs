 sub init()
        m.rowlist = m.top.findNode("myRowListPrincipal")
        m.readRowListExampleTask = createObject("roSGNode","RowListExampleTask")
        m.readRowListExampleTask.control = "RUN"
        m.newRowListItem = createObject("roSGNode","RowListItem")
        m.rowlist.itemComponentName=m.newRowListItem

        m.readRowListExampleTask.observeField("content", "showpostergrid")
        m.rowlist.content= m.readRowListExampleTask.content
        m.top.observeField("visible", "OnVisibleChange")
        m.top.observeField("focusedChild","OnFocusedChildChange")

        print "------------------------------------------------"
        print m.newRowListItem.rowItemSize
    end sub
    
sub OnFocusedChildChange()
    ? "[GridScreen] >> OnFocusedChildChange"
    if m.top.isInFocusChain() and not m.rowList.hasFocus() then
        m.rowList.setFocus(true)
    end if
end sub

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
