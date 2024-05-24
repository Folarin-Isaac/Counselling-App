import 'package:counselling_app/constants/colors.dart';
import 'package:counselling_app/constants/text_styles.dart';
import 'package:counselling_app/views/auth/screens/third_onboarding_screen.dart';
import 'package:counselling_app/views/auth/widgets/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SecondOnboardingScreen extends StatelessWidget {
  const SecondOnboardingScreen({super.key});

  static const routeName = '/second-Onboarding-Screen';

  void navigateToThirdOnboardingScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, ThirdOnboardingScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(
          children: [
            const SizedBox(height: 12),
            const OnboardingScreenConstant(),
            const SizedBox(height: 50),
            Stack(
              children: [
                Image.asset(
                  height: 350,
                  width: 350,
                  'assets/images/second_onboarding_bg.png',
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      height: 175,
                      width: 175,
                      'assets/images/second_onboarding_image.png',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Text(
              textAlign: TextAlign.center,
              'Don’t keep holding it in!',
              style: AppTextStyle.primary,
            ),
            const SizedBox(height: 44),
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'assets/icons/second_onboarding_icon.png',
                height: 8,
                width: 55,
              ),
            ),
            const SizedBox(height: 37),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: () => navigateToThirdOnboardingScreen(context),
                  backgroundColor: actionButtonColor,
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
