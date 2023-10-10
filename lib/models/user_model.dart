// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String? id;
  String? userName;
  String? email;
  String? password;
  String? gender;
  String? phonenumber;

  UserModel({
    this.id,
    this.userName,
    this.email,
    this.password,
    this.gender,
    this.phonenumber,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        userName: json["userName"],
        email: json["email"],
        password: json["password"],
        gender: json["gender"] ?? 'You\'re not set yet',
        phonenumber: json["phonenumber"] ?? 'You\'re not set yet',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userName": userName,
        "email": email,
        "password": password,
        "gender": gender,
        "phonenumber": phonenumber,
      };
}
