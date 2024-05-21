import 'package:counselling_app/views/auth/screens/first_onboarding_screen.dart';
import 'package:counselling_app/views/auth/screens/fourth_onboarding_screen.dart';
import 'package:counselling_app/views/auth/screens/student_platform_screens/student_details_screen.dart';
import 'package:counselling_app/views/auth/screens/student_platform_screens/student_login_screen.dart';
import 'package:counselling_app/views/auth/screens/second_onboarding_screen.dart';
import 'package:counselling_app/views/auth/screens/student_platform_screens/student_signup_screen.dart';
import 'package:counselling_app/views/auth/screens/third_onboarding_screen.dart';
import 'package:counselling_app/widgets/error.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case FirstOnboardingScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const FirstOnboardingScreen(),
      );
    case SecondOnboardingScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const SecondOnboardingScreen(),
      );
    case ThirdOnboardingScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const ThirdOnboardingScreen(),
      );
    case FourthOnboardingScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const FourthOnboardingScreen(),
      );
    case StudentLoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const StudentLoginScreen(),
      );
    case StudentSignupScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const StudentSignupScreen(),
      );
    case StudentDetailsScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const StudentDetailsScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(error: 'This page does not exist'),
        ),
      );
  }
}
