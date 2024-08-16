
import 'package:flutter/material.dart';
import 'package:sign_up/sign_up.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: sign(),
      debugShowCheckedModeBanner: false,
      );
    
  }
}