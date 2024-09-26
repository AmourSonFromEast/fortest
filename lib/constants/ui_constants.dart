import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UiConstants {
  // Colors

  static const Color backgroundColor = Color(0xFF0E1326);
  static const Color blueButtonColor = Color(0xFF4796F2);
  static const Color backGroundLines = Color(0xFF9393BE);
  static const Color white = Color(0xFFFFFFFF);
  // text styles
  static TextStyle textStyle1 = GoogleFonts.jost(
    fontSize: 27.sp,
    height: 32.4.sp / 27.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle2 = TextStyle(
    fontFamily: 'Jost',
    fontSize: 17.sp,
    height: 20.4.sp / 17.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle textStyle3 = TextStyle(
    fontFamily: 'Jost',
    fontSize: 16.sp,
    height: 19.2.sp / 16.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textStyle4 = TextStyle(
    fontFamily: 'Jost',
    fontSize: 16.sp,
    height: 19.2.sp / 16.sp,
    fontWeight: FontWeight.w400,
  );
}
