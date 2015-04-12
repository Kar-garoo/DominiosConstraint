package dominiosconstraint

class Post {

    String topic
    Date dateCreated
    Date lastUpdate
    Boolean itsAllowed


    static constraints = {
        topic(minSize: 3, maxSize: 50, nullable: false)
        dateCreated(min: new Date(), nullable: false)
        lastUpdate(min: new Date(), nullable: false)
    }
}
