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
        password(blank:false, minSize: 8)
        //password(blank:false, minSize: 8, matches: /([a-z]+)/)
    }
    static mapping = {
        tablePerHierarchy true
    }

}
