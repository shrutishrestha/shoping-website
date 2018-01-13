

class BaseController {
    def beforeInterceptor=[action: this.&auth, except:"login"];
    def auth(){
        if(!session.user){
            redirect(action: "login",controller: "login");
        }


    }

}
