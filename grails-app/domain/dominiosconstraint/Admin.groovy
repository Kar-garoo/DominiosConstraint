package dominiosconstraint

class Admin extends User{

    Integer level
    Double rating
    Forum forums

    static hasMany = Forum

///Sergio le faltan las restrcciones del taller de Gorm, orden por nivel noo ?
    static constraints = {
        level(min: 1,max: 5,nullable: false)
        rating(ramge:0..100, nullable: false)
        
    }
}
