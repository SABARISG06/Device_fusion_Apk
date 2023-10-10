class EditProfileModel {
  final String title;
  final String subTitle;

  const EditProfileModel({
    required this.title,
    required this.subTitle,
  });
}

class EditProfileData {
  static const name = EditProfileModel(
    title: "Name",
    subTitle: "Husky Leo",
  );
  static const email = EditProfileModel(
    title: "E-mail",
    subTitle: "HuskyLeo@gmail.com",
  );
  static const gender = EditProfileModel(
    title: "Gender",
    subTitle: "Male",
  );
  static const phoneNumber = EditProfileModel(
    title: "Phone-No",
    subTitle: "979979056",
  );
  static const password = EditProfileModel(
    title: "Password",
    subTitle: "********",
  );
  static List<EditProfileModel> allData = [
    name,
    email,
    gender,
    phoneNumber,
    password,
  ];
}
