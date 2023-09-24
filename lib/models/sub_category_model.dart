class SubCategoryModel {
  final int productID;
  final String title;
  final String price;
  final String shipping;
  final String imageUrl;
  final List<String>? prodHighlights;

  const SubCategoryModel({
    required this.imageUrl,
    required this.productID,
    required this.title,
    required this.price,
    required this.shipping,
    this.prodHighlights,
  });
}

class SubCategory {
  static const product1 = SubCategoryModel(
    imageUrl: 'assets/images/ph2.webp',
    productID: 1,
    title: 'OPPO Reno8T 5G (Sunrise Gold, 128 GB)  (8 GB RAM)',
    price: '₹10,000',
    shipping: 'Free Shipping',
    prodHighlights: [
      '15.49 cm (6.1 inch) Super Retina XDR Display',
      '12MP +12MP Dual Rear Camera',
      '12MP Front Camera',
    ],
  );
  static const product2 = SubCategoryModel(
    imageUrl: 'assets/images/ph2.webp',
    productID: 2,
    title: 'realme 11 Pro+ 5G (Sunrise Beige, 256 GB)  (8 GB RAM)',
    price: '₹16,999',
    shipping: 'Free Shipping',
    prodHighlights: [
      '15.49 cm (6.1 inch) Super Retina XDR Display',
      '12MP +12MP Dual Rear Camera',
      '12MP Front Camera',
    ],
  );
  static const product3 = SubCategoryModel(
    imageUrl: 'assets/images/ph2.webp',
    productID: 3,
    title: 'vivo T2x 5G (Marine Blue, 128 GB)  (6 GB RAM)',
    price: '₹13,999',
    shipping: 'Free Shipping',
    prodHighlights: [
      '15.49 cm (6.1 inch) Super Retina XDR Display',
      '12MP +12MP Dual Rear Camera',
      '12MP Front Camera',
    ],
  );
  static const product4 = SubCategoryModel(
    imageUrl: 'assets/images/ph2.webp',
    productID: 4,
    title: 'Nothing Phone (1) (Black, 128 GB)  (8 GB RAM)',
    price: '₹23,999',
    shipping: 'Free Shipping',
    prodHighlights: [
      '15.49 cm (6.1 inch) Super Retina XDR Display',
      '12MP +12MP Dual Rear Camera',
      '12MP Front Camera',
    ],
  );
  static const product5 = SubCategoryModel(
    imageUrl: 'assets/images/ph2.webp',
    productID: 5,
    title: 'SAMSUNG Galaxy Z Flip5 (Mint, 256 GB)  (8 GB RAM)',
    price: '₹99,999',
    shipping: 'Free Shipping',
    prodHighlights: [
      '15.49 cm (6.1 inch) Super Retina XDR Display',
      '12MP +12MP Dual Rear Camera',
      '12MP Front Camera',
    ],
  );
  static const product6 = SubCategoryModel(
    imageUrl: 'assets/images/ph2.webp',
    productID: 6,
    title: 'SAMSUNG Galaxy F14 5G (B.A.E. Purple, 128 GB)  (6 GB RAM)',
    price: '₹14,990',
    shipping: 'Free Shipping',
    prodHighlights: [
      '15.49 cm (6.1 inch) Super Retina XDR Display',
      '12MP +12MP Dual Rear Camera',
      '12MP Front Camera',
    ],
  );

  static const List<SubCategoryModel> listOfMobiles = [
    product1,
    product2,
    product3,
    product4,
    product5,
    product6,
  ];
}
