import 'package:counselling_app/constants/colors.dart';
import 'package:counselling_app/constants/text_styles.dart';
import 'package:counselling_app/views/auth/screens/fourth_onboarding_screen.dart';
import 'package:flutter/material.dart';

class ThirdOnboardingScreen extends StatelessWidget {
  const ThirdOnboardingScreen({super.key});

  static const routeName = 'third-onboarding-screen';

  void navigateToFourthOnboardingScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, FourthOnboardingScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 18),
             const Text(
                'Parle',
                style: AppTextStyle.secondary,
              ),
           const SizedBox(height: 50),
            Stack(
              children: [
                Image.asset(
                  height: 350,
                  width: 350,
                  'assets/images/first_onboarding_bg.png',
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      height: 175,
                      width: 175,
                      'assets/images/third_onboarding_image.png',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Text(
              textAlign: TextAlign.center,
              'Our Counsellors are here to help you.',
              style: AppTextStyle.primary,
            ),
             const SizedBox(height: 44),
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'assets/icons/third_onboarding_icon.png',
                height: 8,
                width: 55,
              ),
            ),
            const SizedBox(height: 37),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton.extended(
                  onPressed: () => navigateToFourthOnboardingScreen(context),
                  backgroundColor: actionButtonColor,
                  label: const Row(
                    children: [
                      Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
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
