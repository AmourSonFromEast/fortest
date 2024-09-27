import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fortest/constants/ui_constants.dart';

class IconContainer extends StatelessWidget {
  final String imagePath;
  const IconContainer({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: UiConstants.backgroundGradient,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: UiConstants.borderColor,
          width: 0.5.w,
        )
      ),
      width: 44.w,
      height: 44.h,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Image.asset(imagePath),
      ),
    );
  }
}
