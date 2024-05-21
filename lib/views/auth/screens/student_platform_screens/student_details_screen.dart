import 'package:counselling_app/constants/colors.dart';
import 'package:counselling_app/constants/text_styles.dart';
import 'package:flutter/material.dart';

class StudentDetailsScreen extends StatefulWidget {
  const StudentDetailsScreen({super.key});

  static const routeName = '/student-details-screen';

  @override
  State<StudentDetailsScreen> createState() => _StudentDetailsScreenState();
}

class _StudentDetailsScreenState extends State<StudentDetailsScreen> {
  // final bool isPicking = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
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
                'Personal Details',
                style: AppTextStyle.primary,
              ),
              const Text(
                'Kindly fill in these details to enable us serve you better',
                style: AppTextStyle.secondPrimary,
              ),
              const SizedBox(height: 30),
              const Text(
                'Residence',
                style: AppTextStyle.thirdTertiary,
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Country',
                        labelStyle: AppTextStyle.labelTextField,
                        hintText: 'Nigeria',
                        hintStyle: AppTextStyle.hintTextField,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_drop_down,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'State',
                        labelStyle: AppTextStyle.labelTextField,
                        hintText: 'Lagos',
                        hintStyle: AppTextStyle.hintTextField,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_drop_down,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        labelStyle: AppTextStyle.labelTextField,
                        hintText: '0802 505 3698',
                        hintStyle: AppTextStyle.hintTextField,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_drop_down,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Date of Birth',
                        labelStyle: AppTextStyle.labelTextField,
                        hintText: 'DD/MM/YY',
                        hintStyle: AppTextStyle.hintTextField,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_drop_down,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Text(
                'Faith and Religion',
                style: AppTextStyle.thirdTertiary,
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Religion',
                        labelStyle: AppTextStyle.labelTextField,
                        hintText: 'Christian',
                        hintStyle: AppTextStyle.hintTextField,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_drop_down,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Denomination',
                        labelStyle: AppTextStyle.labelTextField,
                        hintText: 'Catholic',
                        hintStyle: AppTextStyle.hintTextField,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_drop_down,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              TextField(
                decoration: InputDecoration(
                        labelText: 'Would you like a Counsellor with a similar Religion',
                        labelStyle: AppTextStyle.labelTextField,
                        hintText: 'Yes',
                        hintStyle: AppTextStyle.hintTextField,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_drop_down,
                          ),
                        ),
                      ),
              ),
              TextField(
                decoration: InputDecoration(
                        labelText: 'Would you like a spiritual based couselling?',
                        labelStyle: AppTextStyle.labelTextField,
                        hintText: 'No, I would prefer to keep our sessions clinical',
                        hintStyle: AppTextStyle.hintTextField,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_drop_down,
                          ),
                        ),
                      ),
              ),
               Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: () {},
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
      ),
    );
  }
}
