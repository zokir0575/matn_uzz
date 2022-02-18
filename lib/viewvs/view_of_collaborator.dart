
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/collaborators_model.dart';

Widget viewOfCollaborator({required BuildContext context, required Collaborators collaborators, }){
  return Text(collaborators.first_name! , style: GoogleFonts.rubik(fontSize: 12.sp, fontWeight: FontWeight.w400, color: const Color.fromRGBO(54, 68, 89, 1)),);
}