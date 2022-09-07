// ignore_for_file: prefer_collection_literals

class School {
  String? sId;
  String? name;

  School({this.sId, this.name});

  School.fromJson(Map<String, dynamic> json) {
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
