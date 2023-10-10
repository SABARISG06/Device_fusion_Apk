class ProfileModel {
  final String userName;
  final String address;
  final String userImage;
  final List<String>? profileItems;

  const ProfileModel({
    required this.userName,
    required this.address,
    required this.userImage,
    this.profileItems,
  });
}

class ProfileData {
  static const listofData = ProfileModel(
    userName: 'Husky Leo',
    address: 'No 06, Vivekananda street Dubai main road, Dubai -661316616',
    userImage: 'assets/images/Listening to Music - 960x960.png',
    profileItems: [
      'Edit Profile',
      'Shopping address',
      'Order history',
      'Settings',
      'Notifications'
    ],
  );
  static List<ProfileModel> allData = [
    listofData,
  ];
}
