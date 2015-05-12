package dominiosconstraint

class Forum {

    String name
    Date dateCreated
    String category

    static belongsTo = [admin:Admin]
    static hasMany = [post:Post]

    static constraints = {
        name(minSize: 3, maxSize: 20, unique: true, nullable: false)
        category(minSize: 3, maxSize: 15, nullable: false)
        dateCreated(nullable: false)
    }

    def beforeValidate() {
        dateCreated = new Date();
    }

    String toString(){
        "${name category}"
    }

}
