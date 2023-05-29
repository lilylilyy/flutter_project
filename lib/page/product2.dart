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
  Product(name: '아메리카노', category: '엔제리너스' , productimg:'assets/images/arrow_right2.png'),
  Product(name: '아메리카노', category: '엔제리너스', productimg:'assets/images/arrow_right2.png'),
  Product(name: '아메리카노', category: '빽다방' , productimg:'assets/images/arrow_right2.png'),
  Product(name: '카페라떼', category: '빽다방', productimg:'assets/images/arrow_right2.png'),
  Product(name: '아메리카노', category: '빽다방', productimg:'assets/images/arrow_right2.png'),
  Product(name: '카페라떼', category: '스타벅스', productimg:'assets/images/arrow_right2.png'),
  Product(name: '카페라떼', category: '스타벅스', productimg:'assets/images/arrow_right2.png'),
  Product(name: '아메리카노', category: '스타벅스', productimg:'assets/images/arrow_right2.png'),
  Product(name: '아메리카노', category: '스타벅스', productimg:'assets/images/arrow_right2.png'),
];
