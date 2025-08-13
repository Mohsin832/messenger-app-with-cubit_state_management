import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Otpscreen extends StatelessWidget {
  const Otpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDarkColor
            : AppColors.scaffoldLightColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Uihelper.customText(
              text: "Enter Code",
              fontsize: 24,
              context: context,
              fontfamily: "bold",
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 40),

            Uihelper.customText(
              text: "We have sent you an SMS with the code",
              fontsize: 14,
              context: context,
              fontweight: FontWeight.w400,
            ),
            Uihelper.customText(
              text: "to +62 1309 - 1710 - 1920",
              fontsize: 14,
              context: context,
              fontweight: FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}
