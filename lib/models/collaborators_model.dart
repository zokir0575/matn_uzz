class Collaborators{
  String? id;
  String? first_name;
  String? last_name;

  Collaborators({this.id, this.first_name, this.last_name});

  Collaborators.fromJson(Map<String, dynamic> json) :
      id = json["id"],
      first_name = json["first_name"],
      last_name = json["last_name"];

  Map<String, dynamic> toJson() => {
    "id" : id,
    "first_name" : first_name,
    "last_name" : last_name,
  };
}
