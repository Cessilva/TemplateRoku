sub init()
      m.myPosterCPC = m.top.findNode("myPosterCPC")
      m.myTitle = m.top.findNode("myTitle")
      m.myInformation = m.top.findNode("myInformation")
      m.myDescription = m.top.findNode("myDescription")
end sub
function asignarDatos()
      print m.top.content
      datos="Categorias          "+ str(m.top.content.PLAYDURATION)+"min           "+m.top.content.releasedate
      m.myPosterCPC.uri= m.top.content.SDPosterUrl
      m.myTitle.text=m.top.content.title
      m.myInformation.text=datos
      m.myDescription.text=m.top.content.description 
end function