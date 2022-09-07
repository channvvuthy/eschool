import 'package:eschool/models/province.dart';

import '../school.dart';

class RegisterResModel {
  String? sId;
  String? lastName;
  String? firstName;
  int? phone;
  String? gender;
  String? photo;
  String? story;
  School? school;
  Province? province;
  String? dateOfBirth;
  String? token;
  int? inCart;
  String? pin;
  int? acceptedPostPolicy;

  RegisterResModel(
      {this.sId,
      this.lastName,
      this.firstName,
      this.phone,
      this.gender,
      this.photo,
      this.story,
      this.school,
      this.province,
      this.dateOfBirth,
      this.token,
      this.inCart,
      this.pin,
      this.acceptedPostPolicy});

  RegisterResModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    lastName = json['last_name'];
    firstName = json['first_name'];
    phone = json['phone'];
    gender = json['gender'];
    photo = json['photo'];
    story = json['story'];
    school = json['school'] != null ? School.fromJson(json['school']) : null;
    province =
        json['province'] != null ? Province.fromJson(json['province']) : null;
    dateOfBirth = json['date_of_birth'];
    token = json['token'];
    inCart = json['in_cart'];
    pin = json['pin'];
    acceptedPostPolicy = json['accepted_post_policy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['last_name'] = lastName;
    data['first_name'] = firstName;
    data['phone'] = phone;
    data['gender'] = gender;
    data['photo'] = photo;
    data['story'] = story;
    if (school != null) {
      data['school'] = school!.toJson();
    }
    if (province != null) {
      data['province'] = province!.toJson();
    }
    data['date_of_birth'] = dateOfBirth;
    data['token'] = token;
    data['in_cart'] = inCart;
    data['pin'] = pin;
    data['accepted_post_policy'] = acceptedPostPolicy;
    return data;
  }
}
