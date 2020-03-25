function init()
    cineDeOro=getcontent("http://mfwkstbroku-api.clarovideo.net/services/content/list?order_id=200&authpn=roku&order_way=DESC&device_category=stb&from=0&device_manufacturer=roku&user_id=35575963&authpt=IdbIIWeFzYdy&region=mexico&device_model=generic&quantity=40&device_type=generic&level_id=GPS&node_id=43940&format=json&api_version=v5.86")
    terror=getcontent("http://mfwkstbroku-api.clarovideo.net/services/content/list?order_id=200&authpn=roku&order_way=DESC&device_category=stb&from=0&device_manufacturer=roku&user_id=35575963&authpt=IdbIIWeFzYdy&region=mexico&device_model=generic&quantity=40&device_type=generic&level_id=GPS&node_id=43939&format=json&api_version=v5.86")
    accionyaventura=getcontent("http://mfwkstbroku-api.clarovideo.net/services/content/list?order_id=200&authpn=roku&order_way=DESC&device_category=stb&from=0&device_manufacturer=roku&user_id=35575963&authpt=IdbIIWeFzYdy&region=mexico&device_model=generic&quantity=40&device_type=generic&level_id=GPS&node_id=43937&format=json&api_version=v5.86")
    dramas=getcontent("mfwkstbroku-api.clarovideo.net/services/content/list?order_id=200&authpn=roku&order_way=DESC&device_category=stb&from=0&device_manufacturer=roku&user_id=35575963&authpt=IdbIIWeFzYdy&region=mexico&device_model=generic&quantity=40&device_type=generic&level_id=GPS&node_id=43942&format=json&api_version=v5.86")
    otrosvieron=getcontent("http://mfwkstbroku-api.clarovideo.net/services/content/list?order_id=200&authpn=roku&order_way=DESC&device_category=stb&from=0&device_manufacturer=roku&user_id=35575963&authpt=IdbIIWeFzYdy&region=mexico&device_model=generic&quantity=40&device_type=generic&level_id=GPS&node_id=43939&format=json&api_version=v5.86")
    lista= [
        {
            Title: "Cine de Oro"
            ContentList: cineDeOro
        }
        {
            Title: "Contenido que te puede gustar"
            ContentList: otrosvieron
        }
        {
            Title: "Accion y aventura"
            ContentList: accionyaventura
        }
        {
            Title: "Dramas"
            ContentList: dramas
        }
        {
            Title: "Terror"
            ContentList: terror
        }
    ]
    content = parseContent(lista)
    contentSimple=parseContentSimple(lista)
    m.top.content = content
    m.top.contentSimple =contentSimple

end function

function parseContent(list As Object)
    ContentNode_object = createObject("RoSGNode","ContentNode")
    for each objeto in list
        ContentNode_object_child = createObject("RoSGNode","ContentNode")
        ContentNode_object_child.Title=objeto.Title
        'print objeto.Title   'Cine de Oro
        for each arreglo in objeto.ContentList
                elemento=createObject("RoSGNode","ContentNode")
                elemento.setFields(arreglo)
                ContentNode_object_child.appendChild(elemento)
        end for
        ContentNode_object.appendChild(ContentNode_object_child)
    end for
    return ContentNode_object
end function

function parseContentSimple(list As Object)
    ContentNode_object = createObject("RoSGNode","ContentNode")
    for each objeto in list
        if (objeto.Title = "Contenido que te puede gustar") then
            ContentNode_object_child = createObject("RoSGNode","ContentNode")
            ContentNode_object_child.Title=objeto.Title
            'print objeto.Title   'Cine de Oro
            for each arreglo in objeto.ContentList
                    elemento=createObject("RoSGNode","ContentNode")
                    elemento.setFields(arreglo)
                    ContentNode_object_child.appendChild(elemento)
            end for
            ContentNode_object.appendChild(ContentNode_object_child)
        end if
    end for
    return ContentNode_object
end function

function getcontent(contenturi as String)
    url = createObject("roUrlTransfer")
    url.setUrl(contenturi)
    rsp = url.getToString()
    responseJson = parseJson(rsp).response
    ? "responseJson "; responseJson
    responseArray = responseJson.groups
    result = []
    for each rowItem in responseArray
        xmlItem = {
            'Informacion para RowListExample
            HDPosterUrl: rowItem.image_small
            'Informacion para Content PageContent
            Title: rowItem.title
            description: rowItem.description_large
            SDPosterUrl: rowItem.image_clean_horizontal
            PlayDuration: rowItem.duration
            ReleaseDate	:rowItem.date
        }
        result.Push(xmlitem)
    end for
    return result
end function
