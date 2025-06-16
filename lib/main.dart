import 'package:flutter/material.dart';
import 'package:numbers/core/app_colors.dart';
import 'package:numbers/view/home/ui/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.firstColor,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.secondColor,
          centerTitle: true,
          iconTheme: IconThemeData(color: AppColors.firstColor, size: 34),
          titleTextStyle: TextStyle(
            color: AppColors.firstColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
