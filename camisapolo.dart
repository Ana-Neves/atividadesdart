class Product {
  late String name;
  late double price;
  late int quantity;

  double calculateDiscount() {
    double totalValue = price * quantity;
    if (quantity <= 10) {
      return totalValue;
    } else if (quantity <= 20) {
      return totalValue * 0.9;
    } else if (quantity <= 50) {
      return totalValue * 0.8;
    } else {
      return totalValue * 0.75;
    }
  }
}