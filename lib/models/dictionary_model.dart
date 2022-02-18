class DictionaryModel{
  String? id;
  String? latin;
  String? massage;
  DictionaryModel({this.id, this.massage,  this.latin});

  DictionaryModel.fromJson(Map<String, dynamic> json) :
      id = json["id"],
      massage = json["massage"],
      latin = json["latin"];

  Map<String, dynamic> toJson() => {
    "id" : id,
    "latin" : latin,
    "massage" : massage,
  };
}
