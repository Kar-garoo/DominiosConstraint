package dominiosconstraint

class Forum {


    String name
    Date dateCreated = null
    String category

    Admin admin

    static belongsTo = [admin:Admin]
    static hasMany = [post:Post]

    static constraints = {
        name(minSize: 3, maxSize: 20, unique: true, nullable: false)
        category(minSize: 3, maxSize: 15, nullable: false)
        //dateCreated(min: new Date(), nullable: false)
    }

    def beforeInsert() {
        if (dateCreated == null) {
            dateCreated = new Date()
        }
    }
}
