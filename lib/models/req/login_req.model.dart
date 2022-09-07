class LoginReqModel {
  int? phone;
  String? password;
  String? deviceId;
  String? deviceName;
  String? deviceOs;
  String? playerId;
  String? appVersion;
  int? acceptedPostPolicy;

  LoginReqModel(
      {this.phone,
      this.password,
      this.deviceId,
      this.deviceName,
      this.deviceOs,
      this.playerId,
      this.appVersion,
      this.acceptedPostPolicy});

  LoginReqModel.fromJson(Map<String, dynamic> json) {
    phone = json['phone'];
    password = json['password'];
    deviceId = json['device_id'];
    deviceName = json['device_name'];
    deviceOs = json['device_os'];
    playerId = json['player_id'];
    appVersion = json['app_version'];
    acceptedPostPolicy = json['accepted_post_policy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['phone'] = phone;
    data['password'] = password;
    data['device_id'] = deviceId;
    data['device_name'] = deviceName;
    data['device_os'] = deviceOs;
    data['player_id'] = playerId;
    data['app_version'] = appVersion;
    data['accepted_post_policy'] = acceptedPostPolicy;
    return data;
  }
}
