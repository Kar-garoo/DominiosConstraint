package dominiosconstraint

class Post {

    String topic
    Date lastUpdate
    Boolean itsAllowed
    Date datecreated


    static constraints = {
        topic(size: 3..50, blank: false, nullable: false)
        lastUpdate(min: new Date(), nullable: false)
        datecreated(min:new Date(), nullable: false)
    }
}
