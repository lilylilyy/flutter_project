class Product {
  final String name;
  final String category;
  final String productimg;
  final String productprice;

  Product({
    required this.name,
    required this.category,
    required this.productimg,
    required this.productprice,
  });
}

final List<Product> productList = [
  Product(name: '카페아메리카노 T', category: '스타벅스', productimg:'assets/images/coffee_img01.png', productprice:'ddㅇㄷㄱdd'),
  Product(name: '카페라떼 T', category: '빽다방', productimg:'assets/images/coffee_img02.png', productprice:'dddㄹㄹㄹㄹd'),
  Product(name: '아메리카노', category: '엔제리너스', productimg:'assets/images/coffee_img03.png', productprice:'dddㅇㅇd'),
  Product(name: 'Apple', category: '이디야' , productimg:'assets/images/coffee_img04.png', productprice:'dddd라라라ㅏㅏ'),
];
