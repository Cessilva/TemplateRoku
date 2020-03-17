function init()
    cineDeOro=getcontent("http://mfwkstbroku-api.clarovideo.net/services/content/list?order_id=200&authpn=roku&order_way=DESC&device_category=stb&from=0&device_manufacturer=roku&user_id=35575963&authpt=IdbIIWeFzYdy&region=mexico&device_model=generic&quantity=40&device_type=generic&level_id=GPS&node_id=43940&format=json&api_version=v5.86")
    print "------------------lista completa-------------------------------"
    print cineDeOro
    content = parseXMLContent(cineDeOro)
    print content
    m.top.content = content

end function

function parseXMLContent(list As Object)

    rowItems = createObject("RoSGNode","ContentNode")
    for each itemAA in list
            rowItems.createChild("ContentNode")
            rowItems.title=itemAA.title
            rowItems.description=itemAA.description
            rowItems.HDPosterUrl=itemAA.HDPosterUrl
    end for
    print array
    return rowItems
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
                Title: rowItem.title
                description: rowItem.description_large
                HDPosterUrl: rowItem.image_medium
            }
            result.Push(xmlitem)
        end for
        return result
end function