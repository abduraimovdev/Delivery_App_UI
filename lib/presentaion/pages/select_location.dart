import 'package:delivery_reg/presentaion/pages/number_registration_page.dart';
import 'package:flutter/material.dart';

class SelectLocation extends StatefulWidget {
  static const String id = "location_page";

  const SelectLocation({super.key});

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: GestureDetector(
                onTap: btnBack,
                child: const Icon(
                  Icons.chevron_left_rounded,
                  size: 35,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Image.asset(
                "assets/images/map.png",
                width: double.infinity,
                height: 200,
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Column(
                children: const [
                  Text(
                    "Select Your Location",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Swithch on your location to stay in tune with \nwhat’s happening in your area",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              "assets/images/img_google_map.png",
              width: double.infinity,
              height: 350,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 30),
            Center(
              child: TextButton(
                onPressed: btnNext,
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFFFF746B),
                  minimumSize:
                      Size(MediaQuery.of(context).size.width * 0.7, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  "Submited Now",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void btnNext() {}
  void btnBack() {
    Navigator.pushNamed(context, NumberRegistrationPage.id);
  }
}
