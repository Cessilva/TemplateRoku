sub init()
   m.Sitios = m.top.findNode("Sitios")
    m.content = createObject("RoSGNode","ContentNode")
      addSection("Renderable Nodes")
      addItem("Rectangle")
      addItem("Rotated Rectangle")
      addItem("Label")
      addItem("Poster")
      addItem("Video")
      addItem("Video Zoom")

      addSection("Animation Nodes")
      addItem("Animation Vector 2D Interpolator")
      addItem("Animation Color Interpolator")
      addItem("Animation Float Interpolator")
      addItem("Sequential Animation")
      addItem("Parallel Animation")
      addItem("Fade-In Animation")
      addItem("Fade-Out Animation")

      addSection("Control Nodes")
      addItem("Timer")

      addSection("Lists and Grids")
      addItem("Poster Grid")
      addItem("Markup Grid")

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
