import 'package:flutter/material.dart';
import 'package:fortest/constants/ui_constants.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 16.0, left: 16),
      child: Divider(
        color: UiConstants.dividerLine,
      ),
    );
  }
}
