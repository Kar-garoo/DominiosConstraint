package dominiosconstraint

class Forum {

    String name
    Date dateCreated
    String category

    static constraints = {
        name(min: 3, max: 20, unique: true)
        category(min: 3, max: 15)
        dateCreated(max: new Date())
    }
}
