import 'package:device_fusion/models/sub_category_model.dart';

class SubTabletCategory {
  static const product1 = SubCategoryModel(
    imageUrl: 'assets/images/tab1.webp',
    productID: 1,
    title:
        'realme Pad 2 6 GB RAM 128 GB ROM 11.5 inch with Wi-Fi+4G Tablet (Imagination Grey)',
    price: '₹19,999',
    shipping: 'Free Shipping',
    prodHighlights: [
      '2K Display with up to 120Hz screen refresh rate',
      '8MP HD Camera',
      'Processor: Mediatek G99',
    ],
  );
  static const product2 = SubCategoryModel(
    imageUrl: 'assets/images/tab1.webp',
    productID: 2,
    title:
        'Lenovo Tab P12 8 GB RAM 256 GB ROM 12.7 Inch with Wi-Fi Only Tablet (Storm Grey)',
    price: '₹30,999',
    shipping: 'Free Shipping',
    prodHighlights: [
      '8 GB RAM | 256 GB ROM | Expandable Upto 1 TB',
      'Android 13 | Battery: 10200 mAh',
      'Processor: MediaTek Dimensity 7050',
    ],
  );
  static const product3 = SubCategoryModel(
    imageUrl: 'assets/images/tab1.webp',
    productID: 3,
    title:
        'OnePlus Pad 12 GB RAM 256 GB ROM 11.61 inch with Wi-Fi Only Tablet (Halo Green)',
    price: '₹39,998',
    shipping: 'Free Shipping',
    prodHighlights: [
      '12 GB RAM | 256 GB ROM',
      'Android 13.1 | Battery: 9510 mAh',
      '13.0 MP Primary Camera | 8 MP Front',
    ],
  );
  static const product4 = SubCategoryModel(
    imageUrl: 'assets/images/tab1.webp',
    productID: 4,
    title:
        'SAMSUNG Galaxy Tab S9+ 12 GB RAM 256 GB ROM 12.4 Inch with Wi-Fi Only Tablet (Beige)',
    price: '₹90,999',
    shipping: 'Free Shipping',
    prodHighlights: [
      'Processor: Snapdragon 8 Gen 2',
      '12 GB RAM | 256 GB ROM | Expandable Upto 1 TB ',
      'Android 13 | Battery: 10090 mAH Lithium Ion',
    ],
  );
  static const product5 = SubCategoryModel(
    imageUrl: 'assets/images/tab1.webp',
    productID: 5,
    title: 'APPLE iPad (10th Gen) 64 GB ROM 10.9 inch with Wi-Fi Only (Blue)',
    price: '₹43,590',
    shipping: 'Free Shipping',
    prodHighlights: [
      'Processor: A14 Bionic Chip (64-bit Architecture) with Neural Engine',
      '64 GB ROM',
      'iPadOS 16 | Battery: Lithium Polymer',
    ],
  );
  static const product6 = SubCategoryModel(
    imageUrl: 'assets/images/tab1.webp',
    productID: 6,
    title: 'I Kall N6 2 GB RAM 32 GB ROM 7 inch with Wi-Fi Only Tablet (Black)',
    price: '₹3,999',
    shipping: 'Free Shipping',
    prodHighlights: [
      'Android 8.1 operating system',
      '2 GB GB of RAM ',
      'Memory card slot support upto 32GB 3000 mAh Battery',
    ],
  );

  static const List<SubCategoryModel> listOfTablets = [
    product1,
    product2,
    product3,
    product4,
    product5,
    product6,
  ];
}
