import 'package:flutter/material.dart';
import 'package:fortest/components/background.dart';
import 'package:fortest/components/button.dart';
import 'package:fortest/components/divider.dart';
import 'package:fortest/components/icon.dart';
import 'package:fortest/constants/size_utils.dart';
import 'package:fortest/constants/ui_constants.dart';
import 'package:fortest/constants/paths.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

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
    return Column(
      children: [
        Padding(
          padding:
              getMarginOrPadding(bottom: 32, top: 130, left: 47, right: 49),
          child: Text(
            "WHAT'S YOUR \nPURPOSE OF USING \nVPN?",
            style: UiConstants.textStyle1.copyWith(color: UiConstants.white),
            textAlign: TextAlign.center,
          ),
        ),
        _buildRadioListTile(
          "Hide Browsing History",
          _purposeSelection,
          (value) {
            setState(() {
              _purposeSelection = value!;
            });
          },
          Paths.eyes,
        ),
        const CustomDivider(),
        _buildRadioListTile(
          "Secure Digital Conversations",
          _purposeSelection,
          (value) {
            setState(() {
              _purposeSelection = value!;
            });
          },
          Paths.detective,
        ),
        const CustomDivider(),
        _buildRadioListTile(
          "Encrypt Online Data",
          _purposeSelection,
          (value) {
            setState(() {
              _purposeSelection = value!;
            });
          },
          Paths.lock,
        ),
        const CustomDivider(),
        _buildRadioListTile(
          "Mark IP Address",
          _purposeSelection,
          (value) {
            setState(() {
              _purposeSelection = value!;
            });
          },
          Paths.planet,
        ),
        const Spacer(),
        SmoothPageIndicator(
          controller: _pageController,
          count: 3, // Количество страниц
          effect: const ScrollingDotsEffect(
            dotWidth: 10.0, // Ширина неактивных точек
            dotHeight: 10.0, // Высота неактивных точек
            activeDotScale: 1.2, // Увеличение активной точки по всем осям
            activeDotColor: UiConstants.grayGradient, // Цвет активной точки
            dotColor: UiConstants.dividerLine, // Цвет неактивных точек
            spacing: 12.0, // Расстояние между точками
          ),
        ),
        BlueButton(pageController: _pageController, buttonText: "continue"),
      ],
    );
  }

  Widget _buildExperienceScreen() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Padding(
            padding: getMarginOrPadding(
                bottom:61, top: 130, left: 49.5, right: 49),
            child: Text(
              "TAILOR YOUR VPN \nEXPERIENCE",
              style: UiConstants.textStyle1.copyWith(color: UiConstants.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),

        _buildRadioListTile(
          "Optimize For High-speed",
          _vpnExperienceSelection,
          (value) {
            setState(() {
              _vpnExperienceSelection = value!;
            });
          },
          Paths.rocket,
        ),
        const CustomDivider(),
        _buildRadioListTile(
          "Conceal Actual Location",
          _vpnExperienceSelection,
          (value) {
            setState(() {
              _vpnExperienceSelection = value!;
            });
          },
          Paths.metka,
        ),
        const CustomDivider(),
        _buildRadioListTile(
          "Safeguard Online Chats",
          _vpnExperienceSelection,
          (value) {
            setState(() {
              _vpnExperienceSelection = value!;
            });
          },
          Paths.filder,
        ),
        const CustomDivider(),
        _buildRadioListTile(
          "Stay Hidden From Tracking",
          _vpnExperienceSelection,
          (value) {
            setState(() {
              _vpnExperienceSelection = value!;
            });
          },
          Paths.glasses,
        ),
        const Spacer(),
        SmoothPageIndicator(
          controller: _pageController,
          count: 3, // Количество страниц
          effect: const ScrollingDotsEffect(
            dotWidth: 10.0, // Ширина неактивных точек
            dotHeight: 10.0, // Высота неактивных точек
            activeDotScale: 1.2, // Увеличение активной точки по всем осям
            activeDotColor: UiConstants.grayGradient, // Цвет активной точки
            dotColor: UiConstants.dividerLine, // Цвет неактивных точек
            spacing: 12.0, // Расстояние между точками
          ),
        ),
        BlueButton(pageController: _pageController, buttonText: "continue"),
      ],
    );
  }

  Widget _buildFinalScreen() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: getMarginOrPadding(bottom: 18, top: 90, left: 45, right: 50),
          child: Text(
            "CONFIGURING \nSETTINGS \nFOR YOUR GOALS...",
            style: UiConstants.textStyle1.copyWith(color: UiConstants.white),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          height: 300.0, // Задайте явные размеры
          width: 300.0,
          child: Image.asset(
            Paths.viking,
            fit: BoxFit
                .contain, // Убедитесь, что содержимое адаптируется по размеру
          ),
        ),
        Padding(
          padding: getMarginOrPadding(bottom: 28, top: 24, left: 24, right: 24),
          child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  // set the default style for the children TextSpans
                  style: UiConstants.textStyle4.copyWith(
                    color: UiConstants.gray,
                  ),
                  children: const [
                    TextSpan(
                      text: 'By continuing,you agree to\n our ',
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                          color: UiConstants.white,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: TextStyle(
                        color: UiConstants.gray,
                      ),
                    ),
                    TextSpan(
                      text: 'Terms of Use.',
                      style: TextStyle(
                          color: UiConstants.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ])),
        ),
        const Spacer(),
        SmoothPageIndicator(
          controller: _pageController,
          count: 3, // Количество страниц
          effect: const ScrollingDotsEffect(
            dotWidth: 10.0, // Ширина неактивных точек
            dotHeight: 10.0, // Высота неактивных точек
            activeDotScale: 1.2, // Увеличение активной точки по всем осям
            activeDotColor: UiConstants.grayGradient, // Цвет активной точки
            dotColor: UiConstants.dividerLine, // Цвет неактивных точек
            spacing: 12.0, // Расстояние между точками
          ),
        ),
        BlueButton(pageController: _pageController, buttonText: "get started"),
      ],
    );
  }

  Widget _buildRadioListTile(
    String title,
    String groupValue,
    ValueChanged<String?> onChanged,
    String imagePath,
  ) {
    return ListTile(
      leading: IconContainer(
        imagePath: imagePath,
      ),
      title: Text(
        softWrap: false,
        title,
        style: UiConstants.textStyle2.copyWith(color: UiConstants.white),
        overflow: TextOverflow.visible,
      ),
      trailing: Radio<String>(
        value: title,
        groupValue: groupValue,
        activeColor: UiConstants.blueButtonColor, // Цвет активной кнопки
        fillColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.selected)) {
              return UiConstants.blueButtonColor; // Цвет для выбранной кнопки
            }
            return UiConstants.dividerLine; // Цвет для неактивной кнопки
          },
        ),
        onChanged: onChanged,
      ),
    );
  }
}
