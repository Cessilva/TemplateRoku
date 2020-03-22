 sub init()
      m.rowlist = m.top.findNode("myRowList")
      m.readPosterGridTask = createObject("roSGNode","PosterGridTask")
      m.readPosterGridTask.control = "RUN"
      m.readPosterGridTask.observeField("content", "showpostergrid")
      m.rowlist.content= m.readPosterGridTask.content
      m.top.setFocus(true)

      m.top.observeField("focusedChild","OnFocusedChildChange")
      m.top.observeField("visible", "OnVisibleChange")
  
    end sub
    

sub OnFocusedChildChange()
    ? "[GridScreen] >> OnFocusedChildChange"
    if m.top.isInFocusChain() and not m.rowList.hasFocus() then
        m.rowList.setFocus(true)
    end if
end sub

sub OnItemFocused()
    itemFocused = m.top.itemFocused
    print itemFocused
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