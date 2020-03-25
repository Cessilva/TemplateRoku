 sub init()
      m.rowlistSimple = m.top.findNode("myRowListSimple")
      m.readRowListExampleTask = createObject("roSGNode","RowListExampleTask")
      m.readRowListExampleTask.control = "RUN"
      m.readRowListExampleTask.observeField("contentSimple", "showpostergrid")
      m.rowlistSimple.content= m.readRowListExampleTask.contentSimple
      m.top.setFocus(true)
       m.top.observeField("focusedChild","OnFocusedChildChange")
    end sub
    

sub OnFocusedChildChange()
    ? "[GridScreen] >> OnFocusedChildChange"
    if m.top.isInFocusChain() and not m.rowListSimple.hasFocus() then
        m.rowListSimple.setFocus(true)
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