package garagecenter

class Client {

	String name
	String cpf
	Date birth
	Location location

    static constraints = {
    }

    static hasOne = [ account : User ]
}
