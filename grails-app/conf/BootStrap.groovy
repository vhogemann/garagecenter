import garagecenter.*

class BootStrap {

    def init = { servletContext ->

		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

		def admin = new User(username: 'admin', enabled: true, password: 'password')
		admin.save(flush: true)

		UserRole.create admin, adminRole, true

		assert User.count() == 1
		assert Role.count() == 2
		assert UserRole.count() == 1
    }
    def destroy = {
    }
}
