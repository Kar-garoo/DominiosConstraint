package dominiosconstraint

class User {
    String name
    String lastname
    Integer age
    String username
    String password

    static constraints = {

        name(blank:false, minSize:3, maxSize:50)
        lastname(blank:false, size:3..50)
        age(nullable: false, min:13)
        username(blank:false, unique:true )
        password(blank:false, minSize: 8, matches: /([a-z]+)/)
        //password(blank:false, minSize: 8, matches: /[[a-z]+[A-Z]+[0-9]+]+/)
    }
    static mapping = {
        tablePerHierarchy true
    }

}
