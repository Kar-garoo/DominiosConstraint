package dominiosconstraint

class Post {

    String topic
    Date lastUpdate
    Boolean itsAllowed
    Date datecreated
    Forum fatherForum_id
    Regular owner_id
    static belongsTo = [Forum, Regular]
    static hasMany = [files: File]


    static constraints = {
        topic(size: 3..50, blank: false, nullable: false)
        lastUpdate(min: new Date(), nullable: false)
        datecreated(min:new Date(), nullable: false)
    }
}
