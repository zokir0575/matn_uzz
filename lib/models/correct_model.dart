
class Correct{
  bool error = false;
  List<String> data = [];

  Correct({required this.error,required this.data});

  Correct.fromJson(Map<String, dynamic> json) :
      error = json["error"],
      data = json["data"];

  Map<String, dynamic> toJson() => {
    "error" : error,
    "data" : data,
  };

}