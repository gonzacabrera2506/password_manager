import 'package:flutter/material.dart';
import 'package:password_manager/presentation/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          //textTheme: GoogleFonts
          ),
      title: 'Password Manager',
      home: const LoginScreen(),
      debugShowCheckedModeBanner: true,
    );
  }
}
