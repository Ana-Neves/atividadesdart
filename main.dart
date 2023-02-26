import 'camisapolo.dart';

void main() {
  Product product = Product();
  product.name = 'Camiseta Polo';
  product.price = 80.00;
  product.quantity = 100;
  double totalValue = product.calculateDiscount();
  print('${product.name}: R\$${totalValue.toStringAsFixed(2)}');
}
