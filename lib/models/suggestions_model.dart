class Suggestions{
  bool error = false;
  List data = [];

  Suggestions({required this.data, required this.error});

  Suggestions.fromJson(Map<String, dynamic> json) :
      error = json["error"],
      data = json["data"];

  Map<String, dynamic> toJson() => {
    "error" : error,
    "data" : data
  };
}