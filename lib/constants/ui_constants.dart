import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UiConstants {
  // Colors

  static const Color backgroundColor = Color(0xFF0E1326);
  static const Color blueButtonColor = Color(0xFF4796F2);
  static const Color backGroundLines = Color(0xFF9393BE);
  static const Color white = Color(0xFFFFFFFF);
  static const Color gray = Color(0xFFA1A1A1);
  static const Color darkBlue = Color(0xFF2E4C6E);
  static const Color dividerLine = Color(0xFF132F50);
  static const Color grayGradient = Color(0xFFAFCFF4);

  static final Color borderColor = Color(0xFF4796F2).withOpacity(0.37);

  //gradient
  static final LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter, // Начало градиента
    end: Alignment.bottomCenter, // Конец градиента
    colors: [
      Color(0xFF2E4C6E).withOpacity(0.17),
      Color(0xFF5992D4).withOpacity(0.17),
      // Цвет начала
      // Цвет окончания
    ],
  );

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
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle4 = TextStyle(
    fontFamily: 'Jost',
    fontSize: 16.sp,
    height: 19.2.sp / 16.sp,
    fontWeight: FontWeight.w400,
  );
}
