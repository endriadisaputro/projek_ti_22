class Product {
  final String name;
  final String price;
  final String quantity;
  final String image;
  final String description;

  Product(this.name, this.price, this.quantity, this.image, this.description);
}

final List<Product> allData = [
  Product('Bayam', '2000', '1 ikat', 'assets/images/img1.png',
      'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nobis ut impedit modi veritatis aut alias eaque quidem dolorum deleniti praesentium, ab blanditiis eum qui eos illum. Optio, similique. Nihil, laudantium.'),
  Product('Alpukat', '4000', '1 Kg', 'assets/images/img2.png',
      'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nobis ut impedit modi veritatis aut alias eaque quidem dolorum deleniti praesentium, ab blanditiis eum qui eos illum. Optio, similique. Nihil, laudantium.'),
  Product('Jagung', '5000', '1 bungkus', 'assets/images/img3.png',
      'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nobis ut impedit modi veritatis aut alias eaque quidem dolorum deleniti praesentium, ab blanditiis eum qui eos illum. Optio, similique. Nihil, laudantium.'),
  Product('Kiwi', '3000', '1 Kg', 'assets/images/img4.png',
      'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nobis ut impedit modi veritatis aut alias eaque quidem dolorum deleniti praesentium, ab blanditiis eum qui eos illum. Optio, similique. Nihil, laudantium.'),
  Product('jeruk', '10.000', '1 kg', 'assets/images/img5.png',
      'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nobis ut impedit modi veritatis aut alias eaque quidem dolorum deleniti praesentium, ab blanditiis eum qui eos illum. Optio, similique. Nihil, laudantium.'),
  Product('Apel', '15.000', '1 Kg', 'assets/images/img6.png',
      'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nobis ut impedit modi veritatis aut alias eaque quidem dolorum deleniti praesentium, ab blanditiis eum qui eos illum. Optio, similique. Nihil, laudantium.'),
];
