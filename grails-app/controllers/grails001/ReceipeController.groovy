package grails001

import groovy.xml.streamingmarkupsupport.BaseMarkupBuilder

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
        redirect(action: 'index')
    }

    def list(){


        def arrList = Receipe.getAll();

        println ("arrList--->"+ arrList.toString())

        ['arrList': arrList]
    }

    def imageView() {

        String image= params.id
        image = image.substring(1,image.length())
        image = image.substring(0,image.length()-1);


        def imagePath = new File("d:/upload/"+ image)
        response.setContentType("application/png")
        response.setContentLength(imagePath.size().toInteger())
        OutputStream out = response.getOutputStream();
        out.write(imagePath.bytes);
        out.close();
    }


}
