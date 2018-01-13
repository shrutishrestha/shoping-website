import ProdutCategory;
class Product {
    ProdutCategory category
    String brand;
    String name;
    float price;

    String productDetails;
    String imageName;

    Integer quantity;
    boolean isSale;
    float discount;
    boolean featured;
static belongsTo = [ProdutCategory]


static constraints={
    productDetails(maxSize: 1000)

}

}
