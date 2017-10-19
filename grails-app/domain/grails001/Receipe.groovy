package grails001

import org.springframework.web.multipart.MultipartFile

class Receipe {


    String title
    String material
    String image
    String url
    Date create_dt=new Date()

    static constraints = {
        title(maxSize: 100)
        material(nullable: true,maxSize: 255)
        image(nullable: true)
        url(nullable: true)
        create_dt(nullable: true)
    }
    static mapping = {
        version false
        sort id: "desc"
    }
}
