import 'package:counselling_app/routing/router.dart';
import 'package:counselling_app/views/auth/screens/first_onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const FirstOnboardingScreen(),
    );
  }
}
