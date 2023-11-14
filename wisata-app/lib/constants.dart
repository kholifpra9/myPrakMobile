import 'package:flutter/material.dart';

const primaryColor = Color(0xFF0070F9);
const secondaryColor = Color(0xFFFE3465);
const bgDarkColor = Color(0xFF475866);
const bgLightColor = Color(0xFF0361F6);
const textDarkColor = Color(0xFF222B45);
const textLightColor = Color(0xFFF9F9F9);
const shadowColor = Color(0xFFE6E6E6);
const greyColor = Color(0xFFDEDEDE);
const dangerColor = Color(0xFFDC3444);
const successColor = Color(0xFF28A745);
const warningColor = Color(0xFFF39C12);
const infoColor = Color(0xFF17A2B8);
// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
