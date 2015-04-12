package dominiosconstraint

class Forum {

    String name
    Date dateCreated
    String category

    static constraints = {
        name(min: 3, max: 20, unique: true, nullable: false)
        category(min: 3, max: 15, nullable: false)
        dateCreated(max: new Date(), nullable: false)
    }

}
