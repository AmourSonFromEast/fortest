import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortest/components/background.dart';
import 'package:fortest/components/button.dart';
import 'package:fortest/constants/ui_constants.dart';
import 'package:fortest/constants/paths.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  String _purposeSelection = '';
  String _vpnExperienceSelection = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(), // Background image
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              _buildPurposeScreen(),
              _buildExperienceScreen(),
              _buildFinalScreen(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPurposeScreen() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            "WHAT'S YOUR PURPOSE OF USING VPN?",
            style: UiConstants.textStyle1.copyWith(color: UiConstants.white),
          ),
          const SizedBox(height: 20),
          _buildRadioListTile(
            "Hide Browsing History",
            _purposeSelection,
            (value) {
              setState(() {
                _purposeSelection = value!;
              });
            },
          ),
          _buildRadioListTile(
            "Secure Digital Conversations",
            _purposeSelection,
            (value) {
              setState(() {
                _purposeSelection = value!;
              });
            },
          ),
          _buildRadioListTile(
            "Encrypt Online Data",
            _purposeSelection,
            (value) {
              setState(() {
                _purposeSelection = value!;
              });
            },
          ),
          _buildRadioListTile(
            "Mask IP Address",
            _purposeSelection,
            (value) {
              setState(() {
                _purposeSelection = value!;
              });
            },
          ),
          const Spacer(),
          BlueButton(pageController: _pageController, buttonText: "continue"),
        ],
      ),
    );
  }

  Widget _buildExperienceScreen() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "TAILOR YOUR VPN EXPERIENCE",
            style: const TextStyle(
                fontFamily: 'Jost',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: UiConstants.white),
          ),
          const SizedBox(height: 20),
          _buildRadioListTile(
            "Optimize For High-speed",
            _vpnExperienceSelection,
            (value) {
              setState(() {
                _vpnExperienceSelection = value!;
              });
            },
          ),
          _buildRadioListTile(
            "Conceal Actual Location",
            _vpnExperienceSelection,
            (value) {
              setState(() {
                _vpnExperienceSelection = value!;
              });
            },
          ),
          _buildRadioListTile(
            "Safeguard Online Chats",
            _vpnExperienceSelection,
            (value) {
              setState(() {
                _vpnExperienceSelection = value!;
              });
            },
          ),
          _buildRadioListTile(
            "Stay Hidden From Tracking",
            _vpnExperienceSelection,
            (value) {
              setState(() {
                _vpnExperienceSelection = value!;
              });
            },
          ),
          const Spacer(),
          BlueButton(pageController: _pageController, buttonText: "continue"),
        ],
      ),
    );
  }

  Widget _buildFinalScreen() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "CONFIGURING SETTINGS FOR YOUR GOALS...",
            style: const TextStyle(
                fontFamily: 'Jost',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: UiConstants.white),
          ),
          const SizedBox(height: 20),
Container(
  height: 200.0,  // Задайте явные размеры
  width: 200.0,
  child: SvgPicture.asset(
    Paths.gallMan,
    fit: BoxFit.contain,  // Убедитесь, что содержимое адаптируется по размеру
  ),
),          const SizedBox(height: 20),
          BlueButton(
              pageController: _pageController, buttonText: "get started"),
        ],
      ),
    );
  }

  Widget _buildRadioListTile(
      String title, String groupValue, ValueChanged<String?> onChanged) {
    return RadioListTile<String>(
      title: Text(title),
      value: title,
      groupValue: groupValue,
      onChanged: onChanged,
    );
  }
}
