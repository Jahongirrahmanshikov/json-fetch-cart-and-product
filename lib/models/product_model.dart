class CartModel {
  List<Cart>? products;

  CartModel({
    this.products,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
        products: json["carts"] != null
            ? (json['carts'] as List)
                .map((e) => Cart.fromJson(e as Map<String, Object?>))
                .toList()
            : [],
      );
}

class Cart {
  int? id;
  List<Products>? product;
  int? total;
  int? discountedTotal;
  int? userId;
  int? totalProducts;
  int? totalQuantity;

  Cart({
    this.id,
    this.product,
    this.total,
    this.discountedTotal,
    this.userId,
    this.totalProducts,
    this.totalQuantity,
  });

  factory Cart.fromJson(Map<String, Object?> json) => Cart(
        id: json["id"] as int?,
        product: json["products"] != null
            ? (json["products"] as List)
                .map((e) => Products.fromJson(e as Map<String, Object?>))
                .toList()
            : [],
        total: json["total"] as int?,
        discountedTotal: json["discountedTotal"] as int?,
        userId: json["userId"] as int?,
        totalProducts: json["totalProducts"] as int?,
        totalQuantity: json["totalQuantity"] as int?,
      );
}

class Products {
  int? id;
  String? title;
  num? price;
  int? quantity;
  int? total;
  double? discountPercentage;
  int? discountedPrice;

  Products({
    this.id,
    this.title,
    this.price,
    this.quantity,
    this.total,
    this.discountPercentage,
    this.discountedPrice,
  });

  factory Products.fromJson(Map<String, Object?> json) => Products(
        id: json["id"] as int?,
        title: json["title"] as String?,
        price: json["price"] as num?,
        quantity: json["quantity"] as int?,
        total: json["total"] as int?,
        discountPercentage: json["discountPercentage"] as double?,
        discountedPrice: json["discountedPrice"] as int?,
      );
}
