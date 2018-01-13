class BootStrap {

    def init = { servletContext ->
        new User(name: "admin",password: "admin",user_type: "admin").save()

    }

    def destroy = {

    }
}
