package dominiosconstraint

class Admin /*extends User*/{

    Integer level
    Double rating

    static constraints = {

        level(min: 1, max: 5, nullable: false)
        rating(range: 0.0..100.0, nullable: false)
    }
}
