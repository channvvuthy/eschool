// ignore_for_file: prefer_collection_literals

class Province {
  String? sId;
  String? name;

  Province({this.sId, this.name});

  Province.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['_id'] = sId;
    data['name'] = name;
    return data;
  }
}
