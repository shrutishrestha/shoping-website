/**
 * Created by Sweychya on 7/14/2016.
 */
class CustomerController {
    def cart() {
        def categoryList = ProdutCategory.list(params)

        if (!session.sessionId) {
            String sessionId = UUID.randomUUID().toString();
            session.sessionId = sessionId;
        }

        //sprintln params;

        Product prod = Product.get(params.id);
        println "Product Name==s" + prod.name
        def quantity = Integer.parseInt(params.quantityToBuy);
        def check = Cart.findByProductAndSessionId(prod, session.sessionId);
        if (check) {
            int newQuantity = check.quantityToBuy + quantity;
            check.quantityToBuy = newQuantity;
            check.quantityPrice = check.quantityToBuy * (prod.price)
            def checkQuantity=Integer.parseInt(params.quantityToBuy)

            check.withDiscount=checkQuantity*check.product.discount
            check.pTotal=check.quantityPrice-check.withDiscount
            check.save(flush: true);

        } else {

            Cart cart = new Cart();
            cart.quantityToBuy = quantity;
            cart.product = prod
            cart.sessionId = session.sessionId
            cart.quantityPrice = quantity * (prod.price)
            def cartQuantity=Integer.parseInt(params.quantityToBuy)

            cart.withDiscount=cartQuantity*cart.product.discount
            cart.pTotal=cart.quantityPrice-cart.withDiscount
            cart.save()
        }
        productManage(prod.id, quantity)

        def checkPerson = Cart.findAllBySessionId(session.sessionId);
        def count = Cart.countBySessionId(session.sessionId)
        if (checkPerson) {
            render(view: "cart", model: [prod: checkPerson, count: count, categoryList: categoryList])
        }


    }

    def index() {}

    def home() {
        def productSale = Product.findAllByIsSale("True")

        def productList = Product.findAllByFeatured("True")
        def categoryList = ProdutCategory.list(params)
        render(view: "home", model: [productList: productList, categoryList: categoryList,productSale:productSale])

    }

    def productDisplay(long id) {
        def categoryList = ProdutCategory.list(params)
        def productDetail = Product.get(id);
        def cat = Product.findAllByCategory(productDetail.category);
        render(view: "productDisplay", model: [productDetail: productDetail, categoryList: categoryList, similar: cat])

    }

    def categoryDetail() {
        def categoryList = ProdutCategory.list(params)
        def category = ProdutCategory.get(params.id);
        def categoryProducts = Product.findAllByCategory(category);
        render(view: "categoryDetail", model: [categoryProducts: categoryProducts, categoryList: categoryList])
    }

    def delete(long id) {
        def categoryList = ProdutCategory.list(params)

        def cart = Cart.get(id);
        def replaceQuantity = cart.quantityToBuy;
        print "replace=" + replaceQuantity;
        Product prod = Product.get(params.idP)
        prod.quantity = prod.quantity + replaceQuantity
        prod.save();
        cart.delete(flush: true);

        def checkPerson = Cart.findAllBySessionId(session.sessionId);
        def count = Cart.countBySessionId(session.sessionId)
        render(view: "cart", model: [prod: checkPerson, count: count, categoryList: categoryList])
    }

    def update() {
        def categoryList = ProdutCategory.list(params)

        def cart = Cart.get(params.id);
        def replaceQuantity = cart.quantityToBuy;
        print "replace=" + replaceQuantity;
        Product prod = Product.get(params.idP)
        prod.quantity = prod.quantity + replaceQuantity
        prod.save();

        def cartQuantity=Integer.parseInt(params.quantityToBuy)
        cart.quantityToBuy=cartQuantity
        cart.withDiscount=cartQuantity*cart.product.discount
        cart.pTotal=cart.quantityPrice-cart.withDiscount
        prod.quantity=prod.quantity-cartQuantity
        print "prod.quantity"+prod.quantity
        prod.save()
        print "newquantityToBuy"+cartQuantity
        cart.save();



        ///


        def cartu = Cart.findByProductAndSessionId(prod, session.sessionId);
        def quantity = Integer.parseInt(params.quantityToBuy);
        print "quantityToBuy"+quantity
        cart.quantityPrice = quantity * (prod.price)
        cart.quantityToBuy = quantity;

        cart.save(flush: true);
        def checkPerson = Cart.findAllBySessionId(session.sessionId);
        def count = Cart.countBySessionId(session.sessionId)
        render(view: "cart", model: [prod: checkPerson, count: count, categoryList: categoryList])
    }




def productManage(long id,long quantity){
    Product p=Product.get(id)
    p.quantity=p.quantity-quantity
    p.save()
}
def search(){
   if(params.keyword) {
       def name = params.keyword
       try {
           def prod = Product.findByName(name)
           def p = Product.get(prod.id)
           print "p====" + p.name
           def categoryList = ProdutCategory.list(params)
           def productDetail = Product.get(prod.id);
           def cat = Product.findAllByCategory(productDetail.category);

           render(view: "search", model: [productDetail: prod, categoryList: categoryList, similar: cat])
       }
       catch (Exception e) {
           flash.message="not found";
           redirect(action:"home")

       }
   }
    else{
       flash.message="please enter correct one";
       redirect(action:"home")
   }

}
    def checkout()
    {
       render(view:"checkout")
    }
    def sendEmail() {
        Customer cust=new Customer()
        cust.name=params.name
        cust.email=params.email
        sendMail {

            to "engineer.rasu@gmail.com"

            html g.render(template:"form",model:[cust:cust])



        }

        forward(action: 'home')

    }
}

