package garagecenter

class Business {

	Location address

    static constraints = {
    }

    static hasOne = [ account : User ]
    static hasMany = [ locations : Location ]
}
