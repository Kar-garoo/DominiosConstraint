package dominiosconstraint

class Admin /*extends User*/{

    Integer level
    Double rating


    static constraints = {

        level(min: 1,max: 5,nullable: false)
        raiting(min: 0,max: 100,nullable: false)
    }
}
