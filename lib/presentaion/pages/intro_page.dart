import 'package:delivery_reg/presentaion/pages/login_page.dart';
import 'package:delivery_reg/presentaion/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  static const String id = "intro_page";
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 137),
              const Image(
                image: AssetImage("assets/images/img_delivery_3.png"),
                width: 308,
                height: 298,
              ),
              const SizedBox(height: 34),
              const Text(
                "Get the fastest",
                style: TextStyle(
                  fontSize: 31,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                "Delivery groceries at home",
                style: TextStyle(
                  fontSize: 31,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 26),
              const Text(
                "Ger your groceries in as fast as one hour",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              const SizedBox(height: 38),
              Center(
                child: TextButton(
                  onPressed: btnGetStarted,
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFFF746B),
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.7, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 19),
              Center(
                child: TextButton(
                  onPressed: btnLogin,
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFF53B175),
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.7, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
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

  void btnGetStarted() {
    Navigator.pushNamed(context, WelcomePage.id);
  }

  void btnLogin() {
    Navigator.pushNamed(context, LoginPage.id);
  }
}
