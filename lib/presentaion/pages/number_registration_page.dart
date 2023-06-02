import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


class NumberRegistrationPage extends StatefulWidget {
  static const String id = "number_page";

  const NumberRegistrationPage({super.key});

  @override
  State<NumberRegistrationPage> createState() => _NumberRegistrationPageState();
}

class _NumberRegistrationPageState extends State<NumberRegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 35),
              child: Image(
                image: AssetImage("assets/images/img_woman.png"),
                height: 376,
                width: 376,
              ),
            ),
             const Padding(
              padding: EdgeInsets.only(left: 27),
              child: Text(
                "Enter your Phone number",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
       
            Padding(
              padding: const EdgeInsets.all(27),
              child: IntlPhoneField(
                style: const TextStyle(
                  fontSize: 18,
                ),
                onSubmitted: btnNext,
                decoration: const InputDecoration(
                ),
                initialCountryCode: 'USA',
              ),
            )
          ],
        ),
      ),
    );
  }

  void btnNext(String? text) {
  }
}