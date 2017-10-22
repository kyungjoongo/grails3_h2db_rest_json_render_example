package grails001

import grails.converters.JSON
import org.apache.commons.lang.StringUtils

class ReceipeController {

    static scaffold = Receipe


    def create() {

    }

    def upload() {

        def file = request.getFile('file')
        def title = request.getParameter("title")
        def material = request.getParameter("title")
        def url = request.getParameter("url")

        if (file.empty) {
            println "파일이 없네 T_Tl;;;;;;;;;;;;;;;;;;"
            flash.message = "File cannot be empty"
        } else {

            def receipe = new Receipe(title: title, material: material, image: file.originalFilename, url: url)
            receipe.save()



            def fullPath = grailsApplication.config.uploadFolder + file.originalFilename
            file.transferTo(new File(fullPath))
        }
        redirect(action: 'list')
    }

    def list() {
        //def arrList = Receipe.getAll();

        def arrList = Receipe.createCriteria().list {
            eq('useYn', true)
            order('id', 'desc')
        }

        println("arrList--->" + arrList.toString())
        ['arrList': arrList]
    }

    def listToJson() {
        def arrList = "";

        if (StringUtils.isNotEmpty(params.id)) {
            def searchTerm = params.id;
            println('searchTerm--->' + searchTerm)
            // with a positional parameter
            /*arrList = Receipe.findAllByTitleLike("%" + searchTerm + "%")*/


            arrList = Receipe.createCriteria().list {
                eq('useYn', true)
                order('id', 'desc')
                like("title", "%"+ searchTerm+ "%")
            }


        } else {
            arrList = Receipe.createCriteria().list {
                eq('useYn', true)
                order('id', 'desc')
            }


        }

        render arrList as JSON
    }


    def search() {

        println("검색어" + params.searchTerm)

        def arrList = "";
        if (params.searchTerm == '') {
            arrList = Receipe.getAll();

        } else {
            arrList = Receipe.findByTitleLike("%" + params.searchTerm + "%")
        }


        render(view: "list", model: ['arrList': arrList])


    }

    def imageView() {

        String image = params.id
        image = image.substring(1, image.length())
        image = image.substring(0, image.length() - 1);


        def imagePath = new File(grailsApplication.config.uploadFolder + image)
//        response.setHeader('Content-length', image.length())
        response.contentType = 'image/jpeg' // or the appropriate image content type
        response.setContentLength(imagePath.size().toInteger())
        OutputStream out = response.getOutputStream();
        out.write(imagePath.bytes);
        out.close();
    }


}
