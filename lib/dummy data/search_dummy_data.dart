import 'package:device_fusion/models/search_model.dart';

class SearchData {
  static const product1 = SearchModel(
    imageUrl: 'assets/images/mobile.jpg',
    productID: 1,
    title: 'OPPO Reno8T 5G (Sunrise Gold, 128 GB)  (8 GB RAM)',
    price: '₹10,000',
    shipping: 'Free Shipping',
  );
  static const product2 = SearchModel(
    imageUrl: 'assets/images/mobile.jpg',
    productID: 2,
    title: 'realme 11 Pro+ 5G (Sunrise Beige, 256 GB)  (8 GB RAM)',
    price: '₹16,999',
    shipping: 'Free Shipping',
  );
  static const product3 = SearchModel(
    imageUrl: 'assets/images/mobile.jpg',
    productID: 3,
    title: 'vivo T2x 5G (Marine Blue, 128 GB)  (6 GB RAM)',
    price: '₹13,999',
    shipping: 'Free Shipping',
  );
  static const product4 = SearchModel(
    imageUrl: 'assets/images/mobile.jpg',
    productID: 4,
    title: 'Nothing Phone (1) (Black, 128 GB)  (8 GB RAM)',
    price: '₹23,999',
    shipping: 'Free Shipping',
  );
  static const product5 = SearchModel(
    imageUrl: 'assets/images/mobile.jpg',
    productID: 5,
    title: 'SAMSUNG Galaxy Z Flip5 (Mint, 256 GB)  (8 GB RAM)',
    price: '₹99,999',
    shipping: 'Free Shipping',
  );
  static const product6 = SearchModel(
    imageUrl: 'assets/images/mobile.jpg',
    productID: 6,
    title: 'SAMSUNG Galaxy F14 5G (B.A.E. Purple, 128 GB)  (6 GB RAM)',
    price: '₹14,990',
    shipping: 'Free Shipping',
  );

  static const List<SearchModel> listOfMobiles = [
    product1,
    product2,
    product3,
    product4,
    product5,
    product6,
  ];
}
