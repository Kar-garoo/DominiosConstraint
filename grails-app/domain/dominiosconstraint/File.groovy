package dominiosconstraint

class File {
    String fileType
    Byte[] content
    Double size

    static constraints = {
        fileType(matches: ".+[/]+.+")
        content()
        size(range:0..10485760)
    }


}
