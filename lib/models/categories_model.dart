class Categories {
  final String title;
  final String imageUrl;

  const Categories({
    required this.title,
    required this.imageUrl,
  });
}

class CategoriesData {
  static const phone = Categories(
    title: 'Phones',
    imageUrl: 'assets/images/ph2.webp',
  );
  static const watch = Categories(
    title: 'Watches',
    imageUrl: 'assets/images/watch2.webp',
  );
  static const headphone = Categories(
    title: 'Headphones',
    imageUrl: 'assets/images/hp3.webp',
  );
  static const laptops = Categories(
    title: 'Laptops',
    imageUrl: 'assets/images/laptop2.webp',
  );
  static const tablets = Categories(
    title: 'Tablets',
    imageUrl: 'assets/images/tab1.webp',
  );
  static const otherProducts = Categories(
    title: 'Other Products',
    imageUrl: 'assets/images/mobile.jpg',
  );

  static List<Categories> listOfItems = [
    phone,
    watch,
    headphone,
    laptops,
    tablets,
    otherProducts,
  ];
}
