import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortest/constants/paths.dart';
import 'package:fortest/constants/ui_constants.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: UiConstants.backgroundColor,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SvgPicture.asset(
              Paths.backgroundLines,
              
              fit: BoxFit.cover,
              color: UiConstants.backGroundLines,
            ),
          ),
        ],
      ),
    );
  }
}
