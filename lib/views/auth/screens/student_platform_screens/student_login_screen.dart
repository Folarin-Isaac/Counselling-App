import 'package:counselling_app/constants/colors.dart';
import 'package:counselling_app/constants/text_styles.dart';
import 'package:counselling_app/views/auth/screens/student_platform_screens/student_signup_screen.dart';
import 'package:flutter/material.dart';

class StudentLoginScreen extends StatefulWidget {
  const StudentLoginScreen({super.key});

  static const routeName = '/student-login-screen';

  @override
  State<StudentLoginScreen> createState() => _StudentLoginScreenState();
}

class _StudentLoginScreenState extends State<StudentLoginScreen> {
  bool isChecked = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void navigateToSignup(BuildContext context) {
    Navigator.pushReplacementNamed(context, StudentSignupScreen.routeName);
  }

  void _toggleCheckedBox() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 18),
              const Text(
                'Parle',
                style: AppTextStyle.secondary,
              ),
              const SizedBox(height: 63),
              const Text(
                'Hi! Welcome Back.',
                style: AppTextStyle.primary,
              ),
              const Text(
                'Kindly log in to begin',
                style: AppTextStyle.secondPrimary,
              ),
              const SizedBox(height: 55),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                  labelStyle: AppTextStyle.labelTextField,
                  hintText: 'example123@gmail.com',
                  hintStyle: AppTextStyle.hintTextField,
                ),
              ),
              const SizedBox(height: 25),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  labelStyle: AppTextStyle.labelTextField,
                  hintText: '**************',
                  hintStyle: AppTextStyle.hintTextField,
                ),
              ),
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: _toggleCheckedBox,
                    icon: Icon(
                      isChecked
                          ? Icons.check_box
                          : Icons.check_box_outline_blank,
                    ),
                  ),
                  const Text(
                    'Remain Anonymous',
                    style: AppTextStyle.secondTertiary,
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: AppTextStyle.secondTertiary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: actionButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: const Text(
                    'LOG IN',
                    style: AppTextStyle.elevatedButtonStyle,
                  ),
                ),
              ),
              const SizedBox(height: 135),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don’t have an account?',
                    style: AppTextStyle.labelTextField,
                  ),
                  TextButton(
                    onPressed: () => navigateToSignup(context),
                    child: const Text(
                      'SIGN UP',
                      style: AppTextStyle.thirdPrimary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
