class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  factory Product.fromJson(Map<String,dynamic> json) {
    return Product(
      id: json['id'] as int, 
      title: json['title'] as String, 
      description: json['description'] as String, 
      price: (json['price'] as num).toDouble(), 
      imageUrl: json['imageUrl'] as String,
      );
  }

  Map<String, dynamic> toJson() {
    return{
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
    };
  }
}