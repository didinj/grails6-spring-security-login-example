package grails6.secure.login

import com.djamware.auth.*

class BootStrap {

    def init = { servletContext ->
        User.withTransaction {
            def userRole = Role.findOrSaveWhere(authority: 'ROLE_USER')
            def user = User.findOrSaveWhere(username: 'admin')
            user.password = 'password' // Will be encoded by Spring Security
            user.save(flush: true)

            if (!UserRole.exists(user.id, userRole.id)) {
                UserRole.create(user, userRole, true)
            }
        }
    }
    def destroy = {
    }
}