class ProductCarusouelModel {
  final String imageUrl;
  final String title;
  final String amount;

  const ProductCarusouelModel({
    required this.imageUrl,
    required this.title,
    required this.amount,
  });
}

//!Phones-data
class ProductItems {
  static const product1 = ProductCarusouelModel(
    imageUrl: 'assets/images/ph1.webp',
    title: 'OPPO Reno8T 5G (Sunrise Gold, 128 GB)  (8 GB RAM)',
    amount: '₹29,999',
  );
  static const product2 = ProductCarusouelModel(
    imageUrl: 'assets/images/ph2.webp',
    title: 'realme 11 Pro+ 5G (Sunrise Beige, 256 GB)  (8 GB RAM)',
    amount: '₹16,999',
  );
  static const product3 = ProductCarusouelModel(
    imageUrl: 'assets/images/ph3.webp',
    title: 'vivo T2x 5G (Marine Blue, 128 GB)  (6 GB RAM)',
    amount: '₹13,999',
  );
  static List<ProductCarusouelModel> listOfProducts = [
    product1,
    product2,
    product3,
  ];
}

//!Wearable-data
class WearableItems {
  static const watch1 = ProductCarusouelModel(
    imageUrl: 'assets/images/watch1.webp',
    title:
        'Boult Craft 1.83" HD Display, BT Calling, Health Monitoring, Knurled Design, 500Nits Smartwatch',
    amount: '₹1,199',
  );
  static const watch2 = ProductCarusouelModel(
    imageUrl: 'assets/images/watch2.webp',
    title: 'Noise Force Plus 1.46'
        ' AMOLED Always-On Display with Bluetooth Calling, Rugged Build Smartwatch  (Black Strap, Regular)',
    amount: '₹3,499',
  );
  static const watch3 = ProductCarusouelModel(
    imageUrl: 'assets/images/watch3.webp',
    title:
        'Pebble Cosmos Quest 1.43"AMOLED AlwaysOn,Rugged Build,BT Calling,Massive 410mAh Battery Smartwatch  (Green Strap, Free Size)',
    amount: '₹2,980',
  );
  static List<ProductCarusouelModel> listOfProducts = [
    watch1,
    watch2,
    watch3,
  ];
}

//!Laptop-data
class LaptopItems {
  static const laptop1 = ProductCarusouelModel(
    imageUrl: 'assets/images/laptop1.webp',
    title:
        'Lenovo LOQ Intel Core i7 13th Gen 13620H - (16 GB/512 GB SSD/Windows 11 Home/6 GB Graphics/NVIDIA GeForce RTX 4050) 15IRH8 Gaming Laptop  (15.6 Inch, Storm Grey, 2.4 kg, With MS Office)',
    amount: '₹99,990',
  );
  static const laptop2 = ProductCarusouelModel(
    imageUrl: 'assets/images/laptop2.webp',
    title:
        'HP Victus Core i5 11th Gen 11400H - (16 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce GTX 1650/144 Hz) 16-d0311TX Gaming Laptop  (16.1 Inch, Mica Silver, 2.48 Kg, With MS Office)',
    amount: '₹57,990',
  );
  static const laptop3 = ProductCarusouelModel(
    imageUrl: 'assets/images/laptop3.webp',
    title:
        'MSI Core i9 13th Gen 13980HX - (64 GB/4 TB SSD/Windows 11 Home/16 GB Graphics/NVIDIA GeForce RTX 4090) Titan GT77 HX 13VI-092IN Gaming Laptop  (17.3 Inch, Core Black, 3.3 Kg)',
    amount: '₹1,14,990',
  );
  static List<ProductCarusouelModel> listOfProducts = [
    laptop1,
    laptop2,
    laptop3,
  ];
}

//!HeadPhones-data
class HeadPhonesItems {
  static const hp1 = ProductCarusouelModel(
    imageUrl: 'assets/images/hp1.webp',
    title:
        'boAt Airdopes 161 with 40 Hours Playback, ASAP Charge & 10mm Drivers Bluetooth Headset  (Pebble Black, True Wireless)',
    amount: '₹999',
  );
  static const hp2 = ProductCarusouelModel(
    imageUrl: 'assets/images/hp2.webp',
    title:
        'realme Techlife Buds T100 with up to 28 Hours Playback & AI ENC for Calls Bluetooth Headset  (Black, True Wireless)',
    amount: '₹1,499',
  );
  static const hp3 = ProductCarusouelModel(
    imageUrl: 'assets/images/hp3.webp',
    title:
        'boAt Immortal 131 with Beast Mode, 40 Hours Playback and ENx Tech Bluetooth Headset  (Black sabre, True Wireless)',
    amount: '₹1,399',
  );
  static List<ProductCarusouelModel> listOfProducts = [
    hp1,
    hp2,
    hp3,
  ];
}
