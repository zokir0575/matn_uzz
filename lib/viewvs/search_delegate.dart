import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/dictionary_model.dart';
import '../services/dictionary_service.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<DictionaryModel> searchTerms = [];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
  FetchDictionary fetchDictionary = FetchDictionary();

  @override
  Widget buildResults(BuildContext context) {
    return Column(
      children: [
        FutureBuilder<List<DictionaryModel>>(
          future: fetchDictionary.getDictionaryList(query: query),
          builder: (context, snapshot){
            var  data = snapshot.data;
            if(!snapshot.hasData){
              return const Center(child: CircularProgressIndicator(),);
            }
            return ListView.builder(
              itemCount:  data?.length,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.all(20.w),
                child: Container(
                  height: 300.h,
                  width: double.infinity,
                  child: Column(
                    children:  [
                      Text('${data?[index].latin}'),
                      const  Divider(
                        color: Color.fromRGBO(101, 103, 106, 0.1),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Izlayotgan so‘zingizni", style: GoogleFonts.rubik(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(132, 132, 137, 1)),),
          Text("yuqoridagi maydonchaga kiriting", style: GoogleFonts.rubik(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(132, 132, 137, 1)),
          ),
        ],
      ),
    );
  }
}