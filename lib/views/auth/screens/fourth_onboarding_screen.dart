import 'package:counselling_app/constants/colors.dart';
import 'package:counselling_app/constants/text_styles.dart';
import 'package:counselling_app/views/auth/screens/student_platform_screens/student_login_screen.dart';
import 'package:flutter/material.dart';

class FourthOnboardingScreen extends StatefulWidget {
  const FourthOnboardingScreen({super.key});

  static const routeName = '/fourth-onboarding-screen';

  @override
  State<FourthOnboardingScreen> createState() => _FourthOnboardingScreenState();
}

class _FourthOnboardingScreenState extends State<FourthOnboardingScreen> {
  bool _isStudent = false;

  bool _setStudentForum() {
    return _isStudent = true;
  }

  bool _setCounsellorForum() {
    return _isStudent = false;
  }

  Widget navigateToLoginScreen(BuildContext context) {
    if (_isStudent) {
      Navigator.pushNamed(context, StudentLoginScreen.routeName);
    } else {
      return const Scaffold(
        body: Center(
          child: Text('The Counsellor Forum is not available yet.'),
        ),
      );
    }
    return const Scaffold();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 18),
            const Text(
              'Parle',
              style: AppTextStyle.secondary,
            ),
            const SizedBox(height: 30),
            const Text(
              'You are a...',
              style: AppTextStyle.primary,
            ),
            const Text(
              'Kindly choose the appropriate category',
              style: AppTextStyle.tertiary,
            ),
            const SizedBox(height: 55),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: _setStudentForum,
                child: Image.network('assets/images/student_onboarding_bg.png',
                height: 150,
                width: 150,
                ),
              ),
            ),
            const SizedBox(height: 20),
             Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: _setCounsellorForum,
                child: Image.network('assets/images/counsellor_onboarding_bg.png',
                height: 150,
                width: 150,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: () => navigateToLoginScreen(context),
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
