import Product

class Cart {

    Product product;
    String sessionId;
    int quantityToBuy;
    float quantityPrice;
float withDiscount;
    float pTotal;
    static belongsTo = [Product]
}
