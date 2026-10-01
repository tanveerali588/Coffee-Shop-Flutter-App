class CartItem {
  final String name;
  final String image;
  final String grams;
  String size;
  final double price;
  int quantity;

  CartItem({
    required this.name,
    required this.image,
    required this.grams,
    required this.size,
    required this.price,
    required this.quantity,
  });

  double get totalPrice => price * quantity;
}

List<CartItem> cartItems = [];