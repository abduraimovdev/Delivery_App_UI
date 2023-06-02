import 'package:delivery_reg/presentaion/pages/number_registration_page.dart';
import 'package:delivery_reg/presentaion/pages/otp_page.dart';
import 'package:delivery_reg/presentaion/pages/select_location.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class WelcomePage extends StatefulWidget {
  static const String id = "welcome_page";

  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  const Padding(
                    padding: EdgeInsets.only(left: 125),
                    child: Image(
                      image: AssetImage("assets/images/img_products.png"),
                      width: 330,
                      height: 344,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 27),
                    child: Text(
                      "Get your groceries on\nyour door step",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 26,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(27),
                    child: IntlPhoneField(
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: btnNext,
                          child: Stack(
                            alignment: Alignment.center,
                            children: const [
                              Icon(
                                Icons.circle,
                                color: Color(0xFFFF746B),
                                size: 30,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      initialCountryCode: 'USA',
                    ),
                  ),
                  const Center(
                    child: Text(
                      "Or connect with social media",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 27, right: 27),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize:
                              Size(MediaQuery.of(context).size.width, 60),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: btnGoogle,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Sign in with Google",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Image(
                              image: AssetImage("assets/images/img_google.png"),
                              width: 22,
                              height: 22,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 19),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 27, right: 27),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize:
                              Size(MediaQuery.of(context).size.width, 60),
                          backgroundColor: const Color(0xFF4A66AC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: btnFacebook,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Continue with Facebook",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Image(
                              image:
                                  AssetImage("assets/images/img_facebook.png"),
                              width: 22,
                              height: 22,
                            ),
                          ],
                        ),
                      ),
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

  void btnFacebook() {
    Navigator.pushNamed(context, SelectLocation.id);
  }

  void btnGoogle() {
    Navigator.pushNamed(context, OtpPage.id);
  }

  void btnNext() {
    Navigator.pushNamed(context, NumberRegistrationPage.id);
  }
}
