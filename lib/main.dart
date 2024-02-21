import 'package:ecoguard/src/app/feature/home/home_screen.dart';
import 'package:ecoguard/src/app/theme/custom_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EcoguardApp());
}

class EcoguardApp extends StatelessWidget {
  const EcoguardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecoguard App',
      theme: CustomTheme.lightTheme(context),
      home: const HomeScreen(
      ),
    );
  }
}
