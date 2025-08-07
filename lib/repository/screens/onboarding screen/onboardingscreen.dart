import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.customImage(imageurl: "onboarding.png"),
            SizedBox(height: 20),
            Uihelper.customText(
              text: "Connect easily with",
              fontsize: 24,
              fontfamily: "bold",
              fontweight: FontWeight.bold,
            ),
            Uihelper.customText(
              text: "your family and friends",
              fontsize: 24,
              fontfamily: "bold",
              fontweight: FontWeight.bold,
            ),
            Uihelper.customText(
              text: "over countries",
              fontsize: 24,
              fontfamily: "bold",
              fontweight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
