package grails001

class Award {

    Date awardDate
    String type
    Integer points

    static belongsTo = [customer:Customer]


    static constraints = {

        type(inList:["Pursauce", "type2"])
    }
}
