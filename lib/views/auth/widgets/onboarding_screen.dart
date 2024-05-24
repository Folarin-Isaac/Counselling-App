import 'package:counselling_app/constants/colors.dart';
import 'package:counselling_app/views/auth/screens/fourth_onboarding_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreenConstant extends StatelessWidget {
  const OnboardingScreenConstant({super.key});

  void navigateToFourthOnboardingScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, FourthOnboardingScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Parle',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: secondaryColor,
          ),
        ),
        TextButton(
          onPressed: () => navigateToFourthOnboardingScreen(context),
          child: const Text(
            'Skip',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color.fromRGBO(51, 51, 51, 0.5),
            ),
          ),
        ),
      ],
    );
  }
}
