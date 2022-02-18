import 'dart:convert';

import 'package:http/http.dart';

import '../models/dictionary_model.dart';
class FetchDictionary{
  var data = [];
  List<DictionaryModel> results = [];
   String fetchUrl = "https://matn.uz/api/v1/dictionary";
   Future<List<DictionaryModel>> getDictionaryList({String? query})async{
     var url = Uri.parse(fetchUrl);
     var response = await get(url);
     try {
       if(response.statusCode == 200){
         data = json.decode(response.body);
         results = data.map((e) => DictionaryModel.fromJson(e)).toList();
         if(query != null){
           results = results.where((element) => element.latin!.toLowerCase().contains(query.toLowerCase())).toList();
         }
       }else{
         print("api error");
       }
     } on Exception catch (e) {
       print("error $e");
     }
     return results;
   }
}