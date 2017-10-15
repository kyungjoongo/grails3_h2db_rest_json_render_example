package grails001

class Memo {


    String content
    String author
    Date create_dt=new Date();


    static mapping = {
        content type: 'text'
        id generator : 'increment'


    }
    static constraints = {

        content(maxSize:  255 )
        author(nullable: true)
        version(nullable: true)
        create_dt(nullable: true)

    }

}
