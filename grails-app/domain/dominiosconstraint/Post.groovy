package dominiosconstraint

class Post {

    String topic
    Date lastUpdate
    Boolean itsAllowed
    Date dateCreated
    Forum fatherForum_id
    Regular owner_id
    static belongsTo = [Forum, Regular]
    static hasMany = [files: File,comments: String]
    int rate


    static constraints = {
        topic(size: 3..50, blank: false, nullable: false)
        lastUpdate(min: new Date(), nullable: true)
        dateCreated(min:new Date(),nullable: true)
        itsAllowed(nullable: true)
        rate(nullable:true)
        comments(nullable:true)
    }
    def beforeInsert ={
        dateCreated=new Date()
        lastUpdate=new Date()
        rate=0
    }
    def beforeUpdate ={
        lastUpdate=new Date()
    }
}
