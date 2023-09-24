class SearchModel {
  final int productID;
  final String title;
  final String price;
  final String shipping;
  final String imageUrl;

  const SearchModel({
    required this.imageUrl,
    required this.productID,
    required this.title,
    required this.price,
    required this.shipping,
  });
}
