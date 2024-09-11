// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/responsive.dart';
import 'package:flutter_portfolio/styles/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lorenz Aparentado Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.lightTan),
        useMaterial3: true,
      ),
      home: const Responsive(),
    );
  }
}
