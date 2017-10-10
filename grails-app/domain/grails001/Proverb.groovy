package grails001

class Proverb {

    String content
    String author
    Date createDt
    String etcs


    static constraints = {

        content(maxSize:  255 )
    }

    static mapping = {

        content type: 'text'
    }
}
