import 'package:flutter/material.dart';
import 'package:fortest/features/onboarding_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Обеспечиваем инициализацию фрейма Flutter
  await ScreenUtil.ensureScreenSize(); // Обеспечиваем корректный размер экрана

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690), // Устанавливаем размеры для адаптивного дизайна
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) {
        return MaterialApp(
          home: OnboardingScreen(), // Здесь используем OnboardingScreen
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
