import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fortest/constants/size_utils.dart';
import 'package:fortest/constants/ui_constants.dart';

class BlueButton extends StatelessWidget {
  final PageController pageController;
  final String buttonText;

  BlueButton(
      {super.key,
      required this.pageController, required this.buttonText}); // Обратите внимание на 'required'

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.ease,
        );
      },
      child: Padding(
        padding: getMarginOrPadding(bottom: 10, top: 16, right: 8, left: 8),
        child: Container(
          width: 716.w,
          height: 51.h,
          decoration: BoxDecoration(
            color: UiConstants.blueButtonColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Text(
              buttonText.toUpperCase(),
              style: UiConstants.textStyle3.copyWith(color: UiConstants.white),
            ),
          ),
        ),
      ),
    );
  }
}
