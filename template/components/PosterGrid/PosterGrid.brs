 sub init()
      m.rowlist = m.top.findNode("myRowList")
      m.readPosterGridTask = createObject("roSGNode","PosterGridTask")
      m.readPosterGridTask.control = "RUN"
      m.readPosterGridTask.observeField("content", "showpostergrid")
      m.rowlist.content= m.readPosterGridTask.content
      m.top.setFocus(true)
    end sub
    

