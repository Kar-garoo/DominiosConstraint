package dominiosconstraint

class Admin extends User{

    Integer level
    Double rating
    Forum forums

    static hasMany = Forum


    static constraints = {
        level(min: 1,max: 5,nullable: false)
        rating(ramge:0..100, nullable: false)
        
    }
}
