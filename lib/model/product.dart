class Product {
  final String name;
  final String shopName;
  final double price;
  final String imagePath;
  final int id;

  Product(
      {
        required this.id,
        required this.name,
      required this.shopName,
      required this.price,
      required this.imagePath});
}

List<Product> products = [
  Product(
    name: 'Cappuccino',
    shopName: 'Starbucks',
    price: 8.99,
    imagePath: 'assets/images/1.jpg',
    id: 1,
  ),
  Product(
    name: 'Dark Roost',
    shopName: 'Dolagona Coffee',
    price: 9.99,
    imagePath: 'assets/images/2.jpg',
    id: 2
  ),
  Product(
    name: 'Americano',
    shopName: 'Ardito Coffee',
    price: 8.99,
    imagePath: 'assets/images/3.jpg',
    id: 3,
  ),
  Product(
    name: 'Macchiato',
    shopName: 'Metro Mocha',
    price: 7.99,
    imagePath: 'assets/images/4.jpg',
    id: 4,
  ),
  Product(
    name: 'Bean Street',
    shopName: 'Decafe Pike',
    price: 7.99,
    imagePath: 'assets/images/5.jpg',
    id: 5,
  ),
];