import 'package:delivery_reg/presentaion/pages/sign_up_page.dart';
import 'package:delivery_reg/presentaion/pages/welcome_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String id = "login_page";

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible = true;
  FocusNode emailNode = FocusNode();
  FocusNode passwordNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                ),
                child: GestureDetector(
                  child: const Icon(
                    Icons.chevron_left_rounded,
                    size: 35,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Image.asset(
                  "assets/images/img_delivery_2.png",
                  width: 300,
                  height: 350,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Column(
                  children: const [
                    Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Enter your login details and password",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    TextField(
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextField(
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: passwordVisible,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: const TextStyle(
                          color: Colors.grey,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            passwordVisible = !passwordVisible;
                            setState(() {});
                          },
                          child: Icon(
                            passwordVisible
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: Colors.grey,
                          ),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.red.shade200,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: TextButton(
                        onPressed: btnLogin,
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xFFFF746B),
                          minimumSize:
                              Size(MediaQuery.of(context).size.width * 0.7, 55),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Text(
                          "Login Now",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: "Don’t have account?t",
                            recognizer: TapGestureRecognizer()..onTap = btnLeft,
                          ),
                          TextSpan(
                            text: " Create new account",
                            style: const TextStyle(
                              color: Color(0xFFFF746B),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = btnRight,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void btnLogin() {}
  void btnLeft() {
    Navigator.pushNamed(context, WelcomePage.id);
  }

  void btnRight() {
    Navigator.pushNamed(context, SignUpPage.id);
  }
}
