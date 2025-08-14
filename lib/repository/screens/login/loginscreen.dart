import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/repository/screens/OTP/otpscreen.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  // const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneNumberController = TextEditingController();

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.customText(
              text: "Enter Your Phone Number",
              fontsize: 24,
              context: context,
              fontweight: FontWeight.bold,
              fontfamily: "bold",
            ),
            SizedBox(height: 20),
            Uihelper.customText(
              text: "Please confirm your country code and enter ",
              fontsize: 14,
              context: context,
            ),
            SizedBox(height: 10),

            Uihelper.customText(
              text: "your phone number",
              fontsize: 14,
              context: context,
            ),

            SizedBox(height: 20),
            Uihelper.customTextField(
              controller: phoneNumberController,
              hintText: " Phone Number",
              textInputType: TextInputType.phone,
              context: context,
            ),
          ],
        ),
      ),
      floatingActionButton: Uihelper.customButton(
        buttonName: "Continue",
        callBack: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Otpscreen()),
          );
        },
        context: context,
        buttonColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.buttonDarkColor
            : AppColors.buttonLightColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
