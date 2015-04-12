package dominiosconstraint

class Post {

    String topic
    Date dateCreated
    Date lastUpdate
    Boolean itsAllowed


    static constraints = {
        topic(min: 3, max: 50, nullable: false)
        dateCreated(min: new Date(), nullable: false)
        lastUpdate(min: new Date(), nullable: false)
    }
}
