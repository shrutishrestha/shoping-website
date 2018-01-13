

class LoginController {
def login= {
    render(view: "login");
}
  def loginUser={
      def userInstance=User.findByNameAndPassword(params.name,params.password);
      if(userInstance){
          session.user=userInstance
          redirect(action: "home",controller: "user");
      }else{
          flash.message="Username and password invalid";
          redirect(action: "login");
      }
  }
    def logout(){
        session.invalidate()
        flash.message="Sucessfully logged out";
        redirect(action: "login");

    }
//    def signup={
//
//    }
}
