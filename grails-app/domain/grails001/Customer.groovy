package grails001

class Customer {

    String firstName
    String lastName
    Long phone
    String email
    Integer totalPoints

    static hasMany = [awards:Award, order:OnlineOrder]


    static constraints = {
        phone();
        firstName(nullable: true);
        lastName(nullable: true)
        email(nullable: true)
        totalPoints(nullable: true,max:12);
    }


}
