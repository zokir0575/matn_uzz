import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matn_uzz/viewvs/search_delegate.dart';
class DictionaryPage extends StatefulWidget {
  const DictionaryPage({Key? key}) : super(key: key);

  @override
  _DictionaryPageState createState() => _DictionaryPageState();
}

class _DictionaryPageState extends State<DictionaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Column(
        children: [
          Container(
            width: double.infinity,
            height: 80.h,
            color: const Color.fromRGBO(253, 253, 253, 1),
            child: Container(
              // padding: EdgeInsets.only(top: 5.h),
              margin: EdgeInsets.only(top: 24.h, left: 8.w, right: 8.w, bottom: 8.h),
              height: 48.h,
              width: 395.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.r),
                  color: const Color.fromRGBO(241, 241, 241, 1)
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "So'zni kiriting",
                  hintStyle:  GoogleFonts.rubik(fontWeight: FontWeight.w400, fontSize: 14.sp, color: const Color.fromRGBO(132, 132, 137, 1)),
                  prefixIcon: IconButton(
                    onPressed: (){
                      showSearch(context: context, delegate: CustomSearchDelegate());
                    },
                    icon: const Icon(Icons.search, color:  Color.fromRGBO(132, 132, 137, 1),),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
