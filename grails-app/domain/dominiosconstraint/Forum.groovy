package dominiosconstraint

class Forum {

    String name
    Date datecreated
    String category

    static constraints = {
        name(minSize: 3, maxSize: 20, unique: true, nullable: false)
        category(minSize: 3, maxSize: 15, nullable: false)
        datecreated(min: new Date(), nullable: false)
    }
}
