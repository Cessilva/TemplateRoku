sub init()
   m.Sitios = m.top.findNode("Sitios")
    m.content = createObject("RoSGNode","ContentNode")
      
      addSection("TODOS")
      addItem("Rectangle")
      addItem("Rotated Rectangle")
      addItem("Label")
      addItem("Poster")

      addSection("Lists and Grids")
      addItem("Parallel Animation")
      addItem("Fade-In Animation")
      addItem("Fade-Out Animation")
      addItem("Timer")

      m.Sitios.content = m.content

      m.top.setFocus(true)
end sub

sub addSection(sectiontext as string)
      m.sectionContent = m.content.createChild("ContentNode")
      m.sectionContent.CONTENTTYPE = "SECTION"
      m.sectionContent.TITLE = sectiontext
    end sub

sub addItem(itemtext as string)
    item = m.sectionContent.createChild("ContentNode")
    item.title = itemtext
end sub
