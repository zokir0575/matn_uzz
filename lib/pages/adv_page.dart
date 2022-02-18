import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matn_uzz/pages/home_page.dart';
class AdvPage extends StatefulWidget {
  const AdvPage({Key? key}) : super(key: key);
  static const String id = "adv_page";
  @override
  _AdvPageState createState() => _AdvPageState();
}

class _AdvPageState extends State<AdvPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration:  const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/splash_image.png"),
                    fit: BoxFit.cover,
                  )
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 32.h,),
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
                  SizedBox(height: 37.h,),
                  Container(
                    height: 500.h,
                    width: 266.3.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/ic_uzcard.png"),
                      )
                    ),
                  ),
                  SizedBox(height: 24.h,),
                  Container(
                    height: 44.w,
                    width: 44.w,
                    decoration: BoxDecoration(
                      color: const  Color.fromRGBO(244, 202, 133, 1),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(12.r), bottomRight: Radius.circular(12.r), topLeft: Radius.circular(10.r), bottomLeft: Radius.circular(10.r)),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: (){
                          Navigator.pushReplacementNamed(context, HomePage.id);
                        },
                        icon: Image.asset("assets/images/ic_cancel.png", ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
      designSize: const Size(375, 815),
      minTextAdapt: true,
      splitScreenMode: true,
    );
  }
}
