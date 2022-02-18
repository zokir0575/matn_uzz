import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matn_uzz/pages/adv_page.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  static const String id = "splash_page";
  @override
  _SplashPageState createState() => _SplashPageState();
}
class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //#image
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration:  const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/splash_image.png"),
                  fit: BoxFit.cover,
                ),
            ),
          ),
           SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
             child: Column(
              children: [
                //#bizning tilimiz
                Container(
                  padding:  EdgeInsets.only(top: 8.h),
                  child: Text("Bizning tilimiz muqaddas", style: GoogleFonts.rubik(fontWeight: FontWeight.w400, fontSize: 10.sp, color: const  Color.fromRGBO(255, 255, 255, 0.8)),),
                ),
                SizedBox(height: 161.h,),
                //#about app
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //#logo
                    Container(
                      height: 62,
                      width: 45,
                      decoration: const  BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/logo_png.png"),

                        )
                      ),
                    ),
                    SizedBox(width: 16.w,),
                    //#some text about app
                    Column(
                      children: [
                        Text("MATN\.UZ", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 24.sp, fontWeight: FontWeight.w700),),
                        SizedBox(height: 1.h,),
                        Text("Bexato • Qulay • Bepul", style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 11.sp),),
                      ],
                    )
                  ],
                ),

              ],
             ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("O'zbek tilida bexato", style: GoogleFonts.notoSansDisplay(fontSize: 24.sp, fontWeight: FontWeight.w400, color: Colors.white),),
                SizedBox(height: 1.h,),
                Text("yozamiz", style: GoogleFonts.notoSansDisplay(fontSize: 24.sp, fontWeight: FontWeight.w400, color: Colors.white),),
                SizedBox(height: 32.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 44.h,
                      width: 153.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(12.r), bottomLeft: Radius.circular(12.r)),
                        color: const Color.fromRGBO(249, 211, 150, 1),
                      ),
                      child: Center(
                        child: Text("Boshlash", style: GoogleFonts.rubik(fontWeight: FontWeight.w500, fontSize: 19.sp, color: const Color.fromRGBO(54, 68, 89, 1)),),
                      ),
                    ),
                    Container(
                      height: 44.h,
                      width: 47.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(12.r), bottomRight: Radius.circular(12.r)),
                        color: const Color.fromRGBO(244, 202, 133, 1),
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: (){
                            Navigator.pushReplacementNamed(context, AdvPage.id);
                          },
                          icon: const Icon(Icons.arrow_forward_ios_rounded, color: Color.fromRGBO(54, 68, 89, 1),),
                        ),
                      )
                    ),
                  ],
                ),
                SizedBox(height: 20.h,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
