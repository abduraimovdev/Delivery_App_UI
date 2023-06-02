import 'package:delivery_reg/presentaion/pages/intro_page.dart';
import 'package:delivery_reg/presentaion/pages/login_page.dart';
import 'package:delivery_reg/presentaion/pages/number_registration_page.dart';
import 'package:delivery_reg/presentaion/pages/otp_page.dart';
import 'package:delivery_reg/presentaion/pages/select_location.dart';
import 'package:delivery_reg/presentaion/pages/sign_up_page.dart';
import 'package:delivery_reg/presentaion/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const RunApp());
}

class RunApp extends StatefulWidget {
  const RunApp({super.key});

  @override
  State<RunApp> createState() => _RunAppState();
}

class _RunAppState extends State<RunApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const IntroPage(),
      routes: {
        IntroPage.id: (context) => const IntroPage(),
        WelcomePage.id: (context) => const WelcomePage(),
        NumberRegistrationPage.id: (context) => const NumberRegistrationPage(),
        OtpPage.id: (context) => const OtpPage(),
        SelectLocation.id: (context) => const SelectLocation(),
        LoginPage.id: (context) => const LoginPage(),
        SignUpPage.id: (context) => const SignUpPage(),
      },
    );
  }
}
