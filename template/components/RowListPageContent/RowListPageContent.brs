sub init()
      m.myContentPageContent = m.top.findNode("myContentPageContent") 

end sub
function pasarContenidoContentPageContent()
m.myContentPageContent.content= m.top.focusedPageContent
end function