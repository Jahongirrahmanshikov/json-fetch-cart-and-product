class ProductModel {
  List<Product>? products;

  ProductModel({
    this.products,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        products: json["products"] != null
            ? (json['products'] as List)
                .map((e) => Product.fromJson(e as Map<String, dynamic>))
                .toList()
            : [],
      );
}

class Product {
  int? id;
  String? title;
  String? description;
  int? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  String? brand;
  String? category;
  String? thumbnail;
  List<String>? images; // List<String> turida o'zgartirildi

  Product({
    this.id,
    this.title,
    this.description,
    this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.brand,
    this.category,
    this.thumbnail,
    this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"] as int?,
        title: json["title"] as String?,
        description: json["description"] as String?,
        price: json["price"] as int?,
        discountPercentage: json["discountPercentage"] as double?,
        rating: json["rating"] as double?,
        stock: json["stock"] as int?,
        brand: json["brand"] as String?,
        category: json["category"] as String?,
        thumbnail: json["thumbnail"] as String?,
        images: (json["images"] as List<dynamic>).cast<String>(), // List<String> ga o'girildi
      );
}
