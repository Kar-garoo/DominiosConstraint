package dominiosconstraint

class Post {

    String topic
    Date dateCreated
    Date lastUpdate
    Boolean itsAllowed


    static constraints = {
        topic(size: 3..50, blank: false, nullable: false)
        dateCreated(min: new Date(), nullable: false)
        lastUpdate(min: new Date(), nullable: false)
    }
}
