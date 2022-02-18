import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matn_uzz/pages/about_app_page.dart';
import 'package:matn_uzz/services/dictionary_service.dart';
import 'package:matn_uzz/viewvs/view_of_dictionary.dart';
import 'package:matn_uzz/viewvs/view_of_tahrir.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
 static const String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FetchDictionary fetchDictionary = FetchDictionary();

  TextEditingController searchController = TextEditingController();
  TabBar get _tabBar => const TabBar(
    unselectedLabelColor:  Colors.grey,
    tabs: [
      Tab(
        child: Center(
          child: Text("Tahrir"),
        ),
      ),
      Tab(
        child: Center(
          child: Text("Lug'at"),
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: const Color.fromRGBO(54, 68, 89, 1),
            leading: Padding(
              padding: EdgeInsets.only(
                left: 21.w,
                top: 13.h,
                bottom: 13.h
              ),
              child: Image.asset("assets/images/logo_png.png"),
            ),
            title: Text("MATN\.UZ", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 13.sp, fontWeight: FontWeight.bold),),
            centerTitle: false,
            actions: [
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, AboutPage.id);
                },
                child: Container(
                  margin: EdgeInsets.all(16.h),
                  height: 24.w,
                  width: 24.w,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(54, 68, 89, 1),
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(
                      width: 2.w,
                      color: const Color.fromRGBO(244, 202, 133, 1),
                    ),
                  ),
                  child:  const  Center(
                    child: Text("i", style: TextStyle(fontWeight: FontWeight.w500),),
                  ),
                ),
              )
            ],
            bottom:  PreferredSize(
              preferredSize: _tabBar.preferredSize,
              child: ColoredBox(
                color: Colors.white,
                child: _tabBar,
              ),
            ),
          ),
          body: const  TabBarView(
            children: [
              //#tahrir
               TahrirPage(),
              //#lug'at
               DictionaryPage()
            ],
          ),
        ),
      ),
      designSize: const Size(411, 731),
      minTextAdapt: true,
      splitScreenMode: true,
    );
  }
}
