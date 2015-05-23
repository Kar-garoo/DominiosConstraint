package dominiosconstraint

class File {
    String fileType
    Byte[] content
    Double size
    static belongsTo = [post:Post]
    static constraints = {
        //fileType(matches: ".+[/]+.+")
        //content()
        //size(range:0..10485760)
    }

    static mapping = {
        post column: 'post_belongs_id'
    }

}
