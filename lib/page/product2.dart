class Product {
  final String name;
  final String category;
  final String productimg;

  Product({
    required this.name,
    required this.category,
    required this.productimg,
  });
}

final List<Product> productList = [
  Product(name: '카페아메리카노 T', category: '스타벅스', productimg:'assets/images/arrow_right2.png'),
  Product(name: '카페라떼 T', category: '스타벅스', productimg:'assets/images/arrow_right2.png'),
  Product(name: '아메리카노', category: '엔제리너스', productimg:'assets/images/arrow_right2.png'),
  Product(name: 'Apple', category: '엔제리너스' , productimg:'assets/images/arrow_right2.png'),
  Product(name: 'Mango', category: '엔제리너스', productimg:'assets/images/arrow_right2.png'),
  Product(name: 'Banana', category: '빽다방' , productimg:'assets/images/arrow_right2.png'),
  Product(name: 'Cricker', category: '빽다방', productimg:'assets/images/arrow_right2.png'),
  Product(name: 'Football', category: '빽다방', productimg:'assets/images/arrow_right2.png'),
  Product(name: 'Tennis', category: '스타벅스', productimg:'assets/images/arrow_right2.png'),
  Product(name: 'Civix', category: '스타벅스', productimg:'assets/images/arrow_right2.png'),
  Product(name: 'Tesia', category: '스타벅스', productimg:'assets/images/arrow_right2.png'),
  Product(name: 'BMW', category: '스타벅스', productimg:'assets/images/arrow_right2.png'),
];
