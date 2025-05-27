package com.djamware.secure

import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.SpringSecurityService

@Secured(['ROLE_USER'])
class DashboardController {

    SpringSecurityService springSecurityService

    def index() {
        def username = springSecurityService?.currentUser?.username ?: 'Guest'
        [username: username]
    }
}