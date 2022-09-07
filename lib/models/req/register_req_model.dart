class RegisterReqModel {
  String? lastName;
  String? firstName;
  int? phone;
  String? password;
  String? confirmPassword;
  String? gender;
  String? deviceId;
  String? deviceName;
  String? deviceOs;
  String? playerId;
  String? appVersion;

  RegisterReqModel(
      {this.lastName,
      this.firstName,
      this.phone,
      this.password,
      this.confirmPassword,
      this.gender,
      this.deviceId,
      this.deviceName,
      this.deviceOs,
      this.playerId,
      this.appVersion});

  RegisterReqModel.fromJson(Map<String, dynamic> json) {
    lastName = json['last_name'];
    firstName = json['first_name'];
    phone = json['phone'];
    password = json['password'];
    confirmPassword = json['confirm_password'];
    gender = json['gender'];
    deviceId = json['device_id'];
    deviceName = json['device_name'];
    deviceOs = json['device_os'];
    playerId = json['player_id'];
    appVersion = json['app_version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['last_name'] = lastName;
    data['first_name'] = firstName;
    data['phone'] = phone;
    data['password'] = password;
    data['confirm_password'] = confirmPassword;
    data['gender'] = gender;
    data['device_id'] = deviceId;
    data['device_name'] = deviceName;
    data['device_os'] = deviceOs;
    data['player_id'] = playerId;
    data['app_version'] = appVersion;
    return data;
  }
}
