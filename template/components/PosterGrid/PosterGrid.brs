 sub init()
      
      m.postergrid = m.top.findNode("myPoster")
     'm.postergrid.uri="http://clarovideocdn3.clarovideo.net/PELICULAS/PESCADORESDEPERLAS/EXPORTACION_WEB/SS/PESCADORESDEPERLASWVERTICAL.jpg?size=200x300"
      m.readPosterGridTask = createObject("roSGNode","Json")
      m.readPosterGridTask.control = "RUN"
      m.readPosterGridTask.observeField("content", "showpostergrid")
      m.postergrid.uri= m.readPosterGridTask.content.hdposterurl
      m.top.setFocus(true)
    end sub
    
    sub showpostergrid()
      m.postergrid.uri=m.readPosterGridTask.content.hdposterurl
    end sub

