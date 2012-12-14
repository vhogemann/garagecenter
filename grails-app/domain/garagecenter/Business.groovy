package garagecenter

class Business {

	String name
	String cnpj

	Location address

    static constraints = {
    }

    static hasOne = [ account : User ]
    static hasMany = [ locations : Location, services : Service ]
}
