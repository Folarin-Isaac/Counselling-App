import 'package:counselling_app/constants/colors.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static const TextStyle primary = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: tertiaryColor,
  );
   static const TextStyle tertiary = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: tertiaryColor,
  );
  static const TextStyle secondPrimary = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 12,
    color: tertiaryColor,
  );
  static const TextStyle thirdPrimary = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: actionButtonColor,
  );
   static const TextStyle secondTertiary = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 11,
    color: tertiaryColor,
  );
  static const TextStyle thirdTertiary = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: secondtertiaryColor,
  );
  static const TextStyle labelTextField = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Color(0XFF9F9F9F),
  );
   static const TextStyle hintTextField = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: tertiaryColor,
  );
   static const TextStyle elevatedButtonStyle = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 14,
    color: Color(0XFFFFFFFF),
  );
  static const TextStyle secondary = TextStyle(
    fontFamily: 'Pacifico',
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: secondaryColor,
  );
}
