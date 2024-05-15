import 'package:flutter/material.dart';

class FirstOnboardingScreen extends StatelessWidget {
  const FirstOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Parle',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Skip',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color.fromRGBO(51, 51, 51, 0.5),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
