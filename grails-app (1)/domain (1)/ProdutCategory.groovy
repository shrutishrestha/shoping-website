

class ProdutCategory {

    String name;
    int status;
    static hasMany = [products:Product]
    static constraints = {
    }
}
