import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../blocs/list_collaborators_cubit.dart';
import '../viewvs/view_of_authors.dart';
import 'about_app_page.dart';

class AboutProject extends StatefulWidget {
  const AboutProject({Key? key}) : super(key: key);
  static const String id = "about_project";
  @override
  _AboutProjectState createState() => _AboutProjectState();
}

class _AboutProjectState extends State<AboutProject> {
  TabBar get _tabBar => const TabBar(
    unselectedLabelColor:  Colors.grey,
    tabs: [
      Tab(
        child: Center(
          child: Text("Loyiha haqida"),
        ),
      ),
      Tab(
        child: Center(
          child: Text("Loyiha ishtirokchilari"),
        ),
      ),
    ],
  );
  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<ListCollaboratorsCubit>(context).apiCollaboratorsList();
  }
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 1,
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
          body: TabBarView(
            children: [
              Container(
                margin: EdgeInsets.all(20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("O‘zbek tilida bexato yozish uchun ishlab chiqilgan ushbu ilova Project Managers kompaniyasi va Milliy mass-mediani qo’llab quvvatlash va rivojlantirish jamoat fondi bilan birgalikda ishlab chiqildi", style: GoogleFonts.rubik(fontSize: 14.sp, fontWeight: FontWeight.w700),),
                        SizedBox(height: 15.h,),
                        Text("MATN.UZ mobil ilovasi, matn.uz veb-sahifasi va dasturchilar uchun maxsus API xizmatlaridan foydalanish mutlaqo bepuldir.", style: GoogleFonts.rubik(fontSize: 14.sp, fontWeight: FontWeight.w400),),
                        SizedBox(height: 15.h,),
                        Text("Matn.uz - O‘zbek tilida bexato yozishda yordamchingiz!", style: GoogleFonts.rubik(fontSize: 14.sp, fontWeight: FontWeight.w400),),
                      ],
                    ),
                    Column(
                      children: [
                       const  Text(" ❤️ 🇺🇿 ♾"),
                        SizedBox(height: 4.h,),
                        Text("Ushbu tizim Vatanparvarlik tuyg'usi ila ishlab chiqarilgan", style: GoogleFonts.rubik(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12.sp),),

                      ],
                    )
                  ],
                ),
              ),
              const AuthorsPage()
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
