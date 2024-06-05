import 'package:ap03/pages/login_page.dart';
import 'package:ap03/themes/lightmode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightMode,
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
