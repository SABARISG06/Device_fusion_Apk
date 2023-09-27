class AddToCartModel {
  final String title;
  final double amount;
  final String imageUrl;

  const AddToCartModel({
    required this.title,
    required this.amount,
    required this.imageUrl,
  });
}

class MyCartData {
  static const cart1 = AddToCartModel(
      title: '2020 Apple iPad Air Air 10.910.9',
      amount: 999,
      imageUrl: 'assets/images/mobile.jpg');
  static const cart2 = AddToCartModel(
      title: '2020 Apple iPad Air Air 10.910.9',
      amount: 2000,
      imageUrl: 'assets/images/mobile.jpg');

  static List<AddToCartModel> listOfItems = [
    cart1,
    cart2,
  ];
}
