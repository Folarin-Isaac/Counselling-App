import 'package:counselling_app/views/auth/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Parle',
      debugShowCheckedModeBanner: false,
      home: const Login(),
    );
  }
}
