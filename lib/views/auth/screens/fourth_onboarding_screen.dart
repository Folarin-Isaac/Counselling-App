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
  bool _isPicked = false;

  bool _setStudentForum() {
    setState(() {});
    _isStudent = true;
    _isPicked = true;
    return _isStudent && _isPicked;
  }

  bool _setCounsellorForum() {
    setState(() {});
    _isStudent = false;
    _isPicked = false;
    return _isStudent && _isPicked;
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
        padding: const EdgeInsets.symmetric(horizontal: 24),
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
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: _setStudentForum,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: _isPicked ? selectedForumColor : Colors.white,
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/student_onboarding_bg.png',
                        fit: BoxFit.contain,
                        height: 150,
                        width: 150,
                      ),
                    ),
                    const Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Center(
                        child: Text(
                          'Student',
                          style: AppTextStyle.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: _setCounsellorForum,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: _isPicked == true
                              ? Colors.white
                              : selectedForumColor,
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/counsellor_onboarding_bg.png',
                        fit: BoxFit.contain,
                        height: 150,
                        width: 150,
                      ),
                    ),
                    const Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Center(
                        child: Text(
                          'Counsellor',
                          style: AppTextStyle.primary,
                        ),
                      ),
                    ),
                  ],
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
