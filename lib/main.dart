import 'package:flutter/material.dart';
import 'package:flutter_ui_avanzado/pages/login/login_page.dart';
import 'package:flutter_ui_avanzado/utils/colors.dart'; // Add this line

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'App UI Avanzado',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primary),
        useMaterial3: true,
      ),
      home: const LoginPage(),
      
    );
  }
}

