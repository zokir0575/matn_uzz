
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../blocs/create_correct_cubit.dart';
import '../models/correct_model.dart';

Widget viewOfCheck(BuildContext context, TextEditingController textController){
  return  Container(
    margin: EdgeInsets.only(right: 16.w),
    width: 99.w,
    height: 40.h,
    decoration: BoxDecoration(
      color: const Color.fromRGBO(38, 225, 136, 1),
      borderRadius: BorderRadius.circular(10.r),
    ),
    child: FlatButton(
      onPressed: (){
        Correct correct = Correct(error: false, data: [textController.text.toString()]);
        BlocProvider.of<CreateCorrect>(context).apiCreateCorrect(correct);
      },
      child: Center(
        child: Text("Tekshirish", style: GoogleFonts.rubik(fontSize: 13.sp, fontWeight: FontWeight.w500, color: Colors.white),),
      ),
    ),
  );

}