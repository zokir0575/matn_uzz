import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../blocs/list_collaborators_cubit.dart';
import '../blocs/list_collaborators_state.dart';
import '../models/collaborators_model.dart';
import 'collaborator_ui.dart';
class AuthorsPage extends StatefulWidget {
  const AuthorsPage({Key? key}) : super(key: key);

  @override
  _AuthorsPageState createState() => _AuthorsPageState();
}

class _AuthorsPageState extends State<AuthorsPage> {
  List<Collaborators> items = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListCollaboratorsCubit(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(top: 5.h),
                margin: EdgeInsets.only(top: 24.h, left: 8.w, right: 8.w, bottom: 8.h),
                height: 48.h,
                width: 395.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.r),
                    color: const Color.fromRGBO(241, 241, 241, 1)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "So'zni kiriting\...",
                    hintStyle: GoogleFonts.rubik(fontSize: 14.sp, fontWeight: FontWeight.w400, color: const Color.fromRGBO(132, 132, 137, 1)),
                    prefixIcon: const Icon(Icons.search, color: Color.fromRGBO(132, 132, 137, 1),),
                    border: InputBorder.none,
                  ),
                ),
              ),
              BlocBuilder<ListCollaboratorsCubit, ListCollaboratorsState>(
                builder: (BuildContext context, ListCollaboratorsState state){
                  if(state is ListCollaboratorsError){
                    uiOfCollaborator(items, true);
                  }
                  if(state is ListCollaboratorsLoaded){
                    items = state.collaborators;
                    uiOfCollaborator(items, false);
                  }
                  return uiOfCollaborator(items, true);
                },
              ),
              SafeArea(
                child:Column(
                  children: [
                    const  Text(" ❤️ 🇺🇿 ♾"),
                    SizedBox(height: 4.h,),
                    Text("Ushbu tizim Vatanparvarlik tuyg'usi ila ishlab chiqarilgan", style: GoogleFonts.rubik(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12.sp),),

                  ],
                ) ,
              )
            ],
          ),
        ),
      ),
    );
  }
}
