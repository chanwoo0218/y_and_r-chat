import 'package:flutter/material.dart';
import 'package:y_and_r_chat/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Y&R chat',
      theme: ThemeData(),
      home: MainScreen()
    );
  }
}
