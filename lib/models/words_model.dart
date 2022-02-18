class Words{
  String? id;
  String? latin;
  String? cyrillic;
  String? syllable;

  Words({this.id, this.latin, this.cyrillic, this.syllable});

  Words.fromJson(Map<String, dynamic> json) :
      id = json["id"],
      latin = json["latin"],
      cyrillic = json["cyrillic"],
      syllable = json["syllable"];

  Map<String, dynamic> toJson() => {
    "id" : id,
    "latin" : latin,
    "cyrillic" : cyrillic,
    "syllable" : syllable,
  };

}