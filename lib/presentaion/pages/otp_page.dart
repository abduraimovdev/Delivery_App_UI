import 'package:delivery_reg/presentaion/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  static const String id = "otp_page";

  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.chevron_left,
                size: 30,
              ),
              const SizedBox(height: 50),
              const Text(
                "Enter you 4-digit code",
                style: TextStyle(
                  fontSize: 28,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                "Code",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              TextField(
                controller: otpController,
                maxLength: 4,
                style: const TextStyle(
                  fontSize: 18,
                  letterSpacing: 15,
                ),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "- - - -",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 7,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: btnResendCode,
                  child: Text(
                    "Resend Code",
                    style: TextStyle(
                      color: Colors.green.shade300,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: btnNext,
        backgroundColor: const Color(0xFFFF746B),
        child: const Icon(
          Icons.chevron_right_rounded,
          size: 40,
        ),
      ),
    );
  }

  void btnResendCode() {}
  void btnNext() {
    Navigator.pushNamed(context, SignUpPage.id);
  }
}
