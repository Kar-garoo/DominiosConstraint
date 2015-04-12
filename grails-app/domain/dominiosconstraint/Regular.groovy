package dominiosconstraint

class Regular /*extends User*/{

    //Post post //esto es para el "has" de la relacion de clase Regular con Post
    Integer postViews
    Integer strikesNumber
    Integer startNumber

    static constraints = {
        postViews(min: 0, nullable: false)
        strikesNumber(min: 0, max: 3, nullable: false)
        startNumber(min: 0, max: 5, nullable: false)

    }
}
