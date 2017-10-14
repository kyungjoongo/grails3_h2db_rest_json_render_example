package grails001

class Proverb {

    String content
    String author


    static constraints = {

        content(maxSize:  255 )
        author(nullable: true)
        version(nullable: true)
    }

    static mapping = {

        content type: 'text'

    }
}
