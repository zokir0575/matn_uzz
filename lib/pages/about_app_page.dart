import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'about_project_page.dart';
class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);
 static const String id = "about_page";
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => SafeArea(
        child: Scaffold(
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
          ),
          body: Column(
            children: [
              Container(
                height: 399.h,
                width: 411.w,
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      leading: IconButton(
                        icon: Container(
                          height: 24.r,
                          width: 24.r,
                          decoration:  BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 2.w,
                                color: const Color.fromRGBO(54, 68, 89, 1),
                              )
                          ),
                          child: const  Center(
                            child: Text("i", style: TextStyle(color: Color.fromRGBO(54, 68, 89, 1), fontWeight: FontWeight.w500),),
                          ),
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, AboutProject.id);
                        },
                      ),
                      title: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, AboutProject.id);
                        },
                        child: Text("Loyiha haqida", style: GoogleFonts.rubik(color: const Color.fromRGBO(54, 68, 89, 1), fontSize: 14.sp, fontWeight: FontWeight.w400),),
                      ),
                    ),
                    Container(
                      height: 1.h,
                      width: 355.w,
                      color: Colors.grey,
                    ),
                    ListTile(
                      leading: IconButton(
                        icon: Image.asset("assets/images/ic_shit.png"),
                        onPressed: (){},
                      ),
                      title: GestureDetector(
                        child: Text("Foydalanilgan ma'lumotlar siyosati", style: GoogleFonts.rubik(color: const Color.fromRGBO(54, 68, 89, 1), fontSize: 14.sp, fontWeight: FontWeight.w400),),
                      ),
                    ),
                    Container(
                      height: 1.h,
                      width: 355.w,
                      color: Colors.grey,
                    ),
                    ListTile(
                      leading: IconButton(
                        icon: Image.asset("assets/images/ic_blaknot.png"),
                        onPressed: (){},
                      ),
                      title: GestureDetector(
                        child: Text("Foydalanish shartlari", style: GoogleFonts.rubik(color: const Color.fromRGBO(54, 68, 89, 1), fontSize: 14.sp, fontWeight: FontWeight.w400),),
                      ),
                    ),
                    Container(
                      height: 1.h,
                      width: 355.w,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10.h,),
                    Container(
                      margin: EdgeInsets.only(left: 40.w),
                      child: Row(
                        children: [
                          //#light mode
                          Container(
                            height: 208.h,
                            width: 139.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.r),
                              color: const Color.fromRGBO(241, 241, 241, 1),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 16.h,),
                                //#light image
                                Container(
                                  height: 127.h,
                                  width: 75.54.w,
                                  decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/ic_light.png"),
                                  )
                                ),
                                ),
                                SizedBox(height: 4.h,),
                                Center(
                                  child: Text("Och rang", style: GoogleFonts.montserrat(fontWeight: FontWeight.w500, fontSize: 14.sp, color: Colors.black),),
                                ),
                                SizedBox(height: 3.h,),
                                //#select button
                                Container(
                                  height: 24.r,
                                  width: 24.r,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 1.5.w,
                                      color: const Color.fromRGBO(196, 196, 196, 1)
                                    )
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 40.w,),
                          //#dark mode
                          Container(
                            height: 208.h,
                            width: 139.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.r),
                              color: const Color.fromRGBO(241, 241, 241, 1),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 16.h,),
                                //#light image
                                Container(
                                  height: 127.h,
                                  width: 75.54.w,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/ic_dark.png"),
                                      )
                                  ),
                                ),
                                SizedBox(height: 4.h,),
                                Center(
                                  child: Text("To'q rang", style: GoogleFonts.montserrat(fontWeight: FontWeight.w500, fontSize: 14.sp, color: Colors.black),),
                                ),
                                SizedBox(height: 3.h,),
                                //#select button
                                Container(
                                  height: 24.r,
                                  width: 24.r,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 1.5.w,
                                          color: const Color.fromRGBO(196, 196, 196, 1)
                                      )
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color.fromRGBO(241, 241, 241, 1),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 16.h,),
                        Text("Loyihaning ijtimoiy tarmoqlardagi sahifalariga", style: GoogleFonts.rubik(fontSize: 14.sp, fontWeight: FontWeight.w400, color: const Color.fromRGBO(151, 158, 168, 1)),),
                        SizedBox(height: 2.h,),
                        Text("a'zo bo'lishni unutmang", style: GoogleFonts.rubik(fontSize: 14.sp, fontWeight: FontWeight.w400, color: const Color.fromRGBO(151, 158, 168, 1)),),
                        SizedBox(height: 8.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //#facebook
                            Container(
                              height: 44.w,
                              width: 44.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: Colors.white
                              ),
                              child: Center(
                                child: SizedBox(
                                  height: 32.w,
                                  width: 32.w,
                                  child: Image.asset("assets/images/ic_facebook.png"),
                                ),
                              ),
                            ),
                            SizedBox(width: 24.w,),
                            //#twitter
                            Container(
                              height: 44.w,
                              width: 44.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  color: Colors.white
                              ),
                              child: Center(
                                child: SizedBox(
                                  height: 24.h,
                                  width: 29.76.w,
                                  child: Image.asset("assets/images/ic_twitter.png"),
                                ),
                              ),
                            ),
                            SizedBox(width: 24.w,),
                            //#instagram
                            Container(
                              height: 44.w,
                              width: 44.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  color: Colors.white
                              ),
                              child: Center(
                                child: SizedBox(
                                  height: 32.w,
                                  width: 32.w,
                                  child: Image.asset("assets/images/ic_instagram.png"),
                                ),
                              ),
                            ),
                            SizedBox(width: 24.w,),
                            //#telegram
                            Container(
                              height: 44.w,
                              width: 44.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  color: Colors.white
                              ),
                              child: Center(
                                child: SizedBox(
                                  height: 25.h,
                                  width: 30.w,
                                  child: Image.asset("assets/images/ic_telegram.png"),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.h,),
                        Text("Loyiha yuzasidan taklifingiz bo'lsa quyidagi havola", style: GoogleFonts.rubik(fontSize: 14.sp, fontWeight: FontWeight.w400, color: const Color.fromRGBO(151, 158, 168, 1)),),
                        SizedBox(height: 2.h,),
                        Text("orqali murojaat qilishingiz mumkin:", style: GoogleFonts.rubik(fontSize: 14.sp, fontWeight: FontWeight.w400, color: const Color.fromRGBO(151, 158, 168, 1)),),
                        SizedBox(height: 12.h,),
                        Container(
                          height: 32.h,
                          width: 102.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text("www.matn.uz", style: GoogleFonts.rubik(fontWeight: FontWeight.w400, fontSize: 12.sp, color: const Color.fromRGBO(3, 61, 104, 1)),),
                          ),
                        ),
                        SizedBox(height: 24.h,),
                        Text("MATN.UZ © 2020-yil. \"Project Managers\" MCHJ  ", style: GoogleFonts.rubik(fontSize: 12.sp, fontWeight: FontWeight.w400, color: const Color.fromRGBO(151, 158, 168, 1)),),
                      ],
                    ),
                  ),
                ),
              ),
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
