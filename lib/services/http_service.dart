import 'dart:convert';
import 'package:http/http.dart';
import '../models/collaborators_model.dart';
import '../models/correct_model.dart';
import '../models/dictionary_model.dart';
import '../models/suggestions_model.dart';
class Network{
  static String BASE = "matn.uz/api/v1";
  static Map<String,String> headers = {'Content-Type':'application/json'};
  /* Http Apis */
  static String API_DICTIONARY = "/dictionary";
  static String API_WORDS = "/words/";//{id}
  static String API_COLLABORATORS = "/collaborators";
  static String API_CREATE_CORRECT = "/correct";
  static String API_CREATE_SUGGESTIONS = "/suggestions";

  /* Http Request*/
  static Future<String?> GET(String api, Map<String, String> params) async {
    var uri = Uri.https(BASE, api, params); // http or https
    var response = await get(uri, headers: headers);
    if (response.statusCode == 200) {
      return response.body;
    }
    return null;
  }

  static Future<String?> POST(String api, Map<String, String> params) async {
    print(params.toString());
    var uri = Uri.https(BASE, api); // http or https
    var response = await post(uri, headers: headers,body: jsonEncode(params));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    return null;
  }

  static Future<String?> PUT(String api, Map<String, String> params) async {
    var uri = Uri.https(BASE, api); // http or https
    var response = await put(uri, headers: headers,body: jsonEncode(params));
    if (response.statusCode == 200) {
      return response.body;
    }
    return null;
  }

  static Future<String?> DEL(String api, Map<String, String> params) async {
    var uri = Uri.https(BASE, api, params); // http or https
    var response = await delete(uri, headers: headers);
    if (response.statusCode == 200) {
      return response.body;
    }
    return null;
  }

  /* Http Params */

  static Map<String, String> paramsEmpty() {
    Map<String, String> params = {};
    return params;
  }

  static Map<String, String> paramsCreate(Correct correct) {
    Map<String, String> params = {};
    params.addAll({
      'error': correct.error.toString(),
      'data': correct.data.toString(),
    });
    return params;
  }
  static Map<String, String> paramsCreateSuggestion(Suggestions suggestions) {
    Map<String, String> params = {};
    params.addAll({
      'error': suggestions.error.toString(),
      'data': suggestions.data.toString(),
    });
    return params;
  }

  // static Map<String, String> paramsUpdate(Post post) {
  //   Map<String, String> params = {};
  //   params.addAll({
  //     'id': post.id,
  //     'fullname': post.fullname,
  //     'mobile': post.mobile,
  //   });
  //   return params;
  // }

  /* HTTP Parsing */
  static List<DictionaryModel> parsePostList(String response) {
    dynamic json = jsonDecode(response);
    var data = List<DictionaryModel>.from(json.map((x) => DictionaryModel.fromJson(x)));
    return data;
  }
  static DictionaryModel parsePost(String response) {
    dynamic json = jsonDecode(response);
    var data = DictionaryModel.fromJson(json);
    return data;
  }
  static List<Collaborators> parsePostCollaborators(String response) {
    dynamic json = jsonDecode(response);
    var data = List<Collaborators>.from(json.map((x) => DictionaryModel.fromJson(x)));
    return data;
  }
  static Collaborators parseCollaborators(String response) {
    dynamic json = jsonDecode(response);
    var data = Collaborators.fromJson(json);
    return data;
  }
}