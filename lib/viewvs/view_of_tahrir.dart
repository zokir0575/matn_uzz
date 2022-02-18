import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matn_uzz/viewvs/view_of_check.dart';
import '../blocs/create_correct_cubit.dart';
import '../blocs/create_correct_state.dart';
class TahrirPage extends StatefulWidget {
  const TahrirPage({Key? key}) : super(key: key);

  @override
  _TahrirPageState createState() => _TahrirPageState();
}

class _TahrirPageState extends State<TahrirPage> {
  onChanged(String value){
    setState(() {
      charLength = value.length;
    });
  }
  _finish(BuildContext context){
    SchedulerBinding.instance?.addPostFrameCallback((_) {
      Navigator.pop(context, "result");
    });
  }
  int charLength = 0;
  bool isSelected = false;
  bool selected = false;
  TextEditingController textController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateCorrect(),
      child:  Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 39.h,),
              TextField(
                maxLines: 23,
                onChanged: onChanged,
                textInputAction: TextInputAction.done,
                controller: textController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.w),
                  hintText:  "Matnni o'zgartiring...",
                  hintStyle: GoogleFonts.rubik(fontSize: 14.sp, fontWeight: FontWeight.w400, color: Colors.grey),
                ),
              ),
              SizedBox(height: 12.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      //#shotchik
                      Container(
                        margin: EdgeInsets.only(left: 16.w),
                        height: 40.w,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(249, 249, 249, 1),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Column(
                          children: [
                            //#length
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 40.w,
                                height: 20.h,
                                decoration: BoxDecoration(
                                    color: const Color.fromRGBO(241, 241, 241, 1),
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.r), topLeft: Radius.circular(10.r))
                                ),
                                child: Center(
                                  child: Text("$charLength", style: GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 12.sp, color: const  Color.fromRGBO(142, 142, 142, 1)),),
                                ),
                              ),
                            ),
                            //#5000
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 40.w,
                                height: 20.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(10.r), bottomLeft: Radius.circular(10.r)),
                                  color: const Color.fromRGBO(249, 249, 249, 1),
                                ),
                                child: Center(
                                  child: Text("5000", style: GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 12.sp, color: const  Color.fromRGBO(142, 142, 142, 1)),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 12.w,),
                      //#cancel
                      Container(
                        height: 40.w,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(249, 249, 249, 1),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: IconButton(
                            icon: const Icon(Icons.cancel, color: Color.fromRGBO(142, 142, 142, 1),),
                            onPressed: () {
                              textController.clear();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40.w,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(249, 249, 249, 1),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: IconButton(
                              icon: const Icon(Icons.file_copy, color: Color.fromRGBO(142, 142, 142, 1),),
                              onPressed:  (){}
                          ),
                        ),
                      ),
                      SizedBox(width: 12.w,),
                      //#check
                      BlocBuilder<CreateCorrect, CreateCorrectState>(
                        builder: (BuildContext context, CreateCorrectState state){
                          if(state is CreateCorrectLoading){
                            viewOfCheck(context, textController);
                          }
                          if(state is CreateCorrectLoaded){
                            _finish(context);
                          }
                          if(state is CreateCorrectError){
                          }
                          return viewOfCheck(context, textController);
                        },
                      )

                    ],
                  ),
                ],
              ),
              SizedBox(height: 16.h,),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16.w, right: 10.w),
                    child: Row(
                      children: [
                        Container(
                          height: 40.h,
                          width: 190.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r), bottomLeft: Radius.circular(10.r)),
                            color: const  Color.fromRGBO(249, 211, 150, 1),
                          ),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            child: !isSelected ?  Container(
                                height: 40.h,
                                width: 190.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r), bottomLeft: Radius.circular(10.r)),
                                  color: !isSelected ? const  Color.fromRGBO(241, 241, 241, 1) : Colors.white ,
                                ),
                                margin: EdgeInsets.only(top: 2.h, left: 2.w, bottom: 2.h),
                                child: Center(child: Text("Lotincha",  style: GoogleFonts.rubik(fontWeight: FontWeight.w500, fontSize: 16.sp, color: !isSelected ? const Color.fromRGBO(181, 181, 181, 1): Colors.black, ),))
                            ) :Container(
                                height: 40.h,
                                width: 190.w,
                                margin: EdgeInsets.only(top: 2.h, left: 2.w, bottom: 2.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r), bottomLeft: Radius.circular(10.r)),
                                  color: !isSelected ? const  Color.fromRGBO(241, 241, 241, 1) : Colors.white ,
                                ),
                                // margin: EdgeInsets.only(left: 50.w),
                                child: Center(child: Text("Lotincha", style: GoogleFonts.rubik(fontWeight: FontWeight.w500, fontSize: 16.sp, color: !isSelected ? const Color.fromRGBO(181, 181, 181, 1): Colors.black, ),))
                            ),
                          ),
                        ),
                        Container(
                          height: 40.h,
                          width: 190.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10.r), bottomRight: Radius.circular(10.r)),
                            color: const  Color.fromRGBO(249, 211, 150, 1),
                          ),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                selected = !selected;
                              });
                            },
                            child: !selected ?  Container(
                                height: 40.h,
                                width: 190.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10.r), bottomRight: Radius.circular(10.r)),
                                  color: !selected ? const  Color.fromRGBO(241, 241, 241, 1) : Colors.white ,
                                ),
                                margin: EdgeInsets.only(top: 2.h, right: 2.w, bottom: 2.h),
                                child: Center(child: Text("Кирилча",  style: GoogleFonts.rubik(fontWeight: FontWeight.w500, fontSize: 16.sp, color: !selected ? const Color.fromRGBO(181, 181, 181, 1): Colors.black, ),))
                            ) :Container(
                                height: 40.h,
                                width: 190.w,
                                margin: EdgeInsets.only(top: 2.h, left: 2.w, bottom: 2.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10.r), bottomRight: Radius.circular(10.r)),
                                  color: !selected ? const  Color.fromRGBO(241, 241, 241, 1) : Colors.white ,
                                ),
                                child: Center(child: Text("Кирилча", style: GoogleFonts.rubik(fontWeight: FontWeight.w500, fontSize: 16.sp, color: !selected ? const Color.fromRGBO(181, 181, 181, 1): Colors.black, ),))
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 5.h),
                      margin: EdgeInsets.only(top: 4.h),
                      height: 32.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(249, 211, 150, 1),
                        borderRadius: BorderRadius.circular(23.r),
                      ),
                      child: Center(
                        child: IconButton(
                          icon:  const Icon(Icons.compare_arrows),
                          onPressed: (){},
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
