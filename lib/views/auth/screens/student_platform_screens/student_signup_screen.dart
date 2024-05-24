import 'package:counselling_app/constants/colors.dart';
import 'package:counselling_app/constants/text_styles.dart';
import 'package:counselling_app/views/auth/screens/student_platform_screens/student_details_screen.dart';
import 'package:counselling_app/views/auth/screens/student_platform_screens/student_login_screen.dart';
import 'package:flutter/material.dart';

class StudentSignupScreen extends StatefulWidget {
  const StudentSignupScreen({super.key});

  static const routeName = '/student-signup-screen';

  @override
  State<StudentSignupScreen> createState() => _StudentSignupScreenState();
}

class _StudentSignupScreenState extends State<StudentSignupScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey();
  bool isChecked = true;
  final Map<String, String> _authData = {
    'name': '',
    'email': '',
    'password': '',
  };
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

   void navigateToLogin(BuildContext context) {
    Navigator.pushReplacementNamed(context, StudentLoginScreen.routeName);
  }

   void navigateToDetailsScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, StudentDetailsScreen.routeName);
  }

  void _toggleCheckedBox() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 18),
                const Text(
                  'Parle',
                  style: AppTextStyle.secondary,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Welcome to Parle',
                  style: AppTextStyle.primary,
                ),
                const Text(
                  'It’s time to take your first step to LETTING IT GO!',
                  style: AppTextStyle.secondPrimary,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Full name',
                    labelStyle: AppTextStyle.labelTextField,
                    hintText: 'Bukunmi Shonde',
                    hintStyle: AppTextStyle.hintTextField,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Name must be provided!';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _authData['name'] = value!;
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: AppTextStyle.labelTextField,
                    hintText: 'shondebukunmi@gmail.com',
                    hintStyle: AppTextStyle.hintTextField,
                  ),
                  validator: (value) {
                    if (value!.isEmpty || !value.contains('@')) {
                      return 'Invalid Email';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _authData['email'] = value!;
                  },
                ),
                const SizedBox(height: 15),
                isChecked
                    ? TextFormField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                          labelText: 'Username',
                          labelStyle: AppTextStyle.labelTextField,
                          hintText: 'Sandalili',
                          hintStyle: AppTextStyle.hintTextField,
                        ),
                      )
                    : const SizedBox(),
                const SizedBox(height: 15),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: AppTextStyle.labelTextField,
                    hintText: '**************',
                    hintStyle: AppTextStyle.hintTextField,
                  ),
                  validator: (value) {
                    if (value!.isEmpty || value.length < 4) {
                      return 'Password is too short!';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _authData['password'] = value!;
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Confirm Password',
                    labelStyle: AppTextStyle.labelTextField,
                    hintText: '**************',
                    hintStyle: AppTextStyle.hintTextField,
                  ),
                  validator: (value) {
                    if (value != _passwordController.text) {
                      return 'Passwords do not match!';
                    }
                    return null;
                  },
                ),
                isChecked == false
                    ? const SizedBox(height: 68)
                    : const SizedBox(height: 10),
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
                  ],
                ),
                const SizedBox(height: 32),
                SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () => navigateToDetailsScreen(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: actionButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: const Text(
                    'CREATE ACCOUNT',
                    style: AppTextStyle.elevatedButtonStyle,
                  ),
                ),
              ),
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account? ',
                    style: AppTextStyle.labelTextField,
                  ),
                  TextButton(
                    onPressed: () => navigateToLogin(context),
                    child: const Text(
                      'LOG IN',
                      style: AppTextStyle.thirdPrimary,
                    ),
                  ),
                ],
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
