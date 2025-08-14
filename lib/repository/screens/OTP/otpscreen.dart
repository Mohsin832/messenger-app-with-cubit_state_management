import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Otpscreen extends StatelessWidget {
  const Otpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontSize: 20,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
        fontWeight: FontWeight.w600,

        backgroundColor: Colors.white70,
        decorationColor: Colors.white70,
      ),

      decoration: BoxDecoration(
        color: Colors.white60,
        // border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(7),
      ),
    );
    TextEditingController otpController = TextEditingController();
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.borderTextFieldDarkModeColor
            : AppColors.borderTextFieldLightModeColor,
      ),

      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.otpDarkColor
            : AppColors.otpLightColor,
      ),
    );
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
              text: "to xxxx xxxxxxx",
              fontsize: 14,
              context: context,
              fontweight: FontWeight.w400,
            ),
            SizedBox(height: 20),
            Pinput(
              controller: otpController,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
            ),
          ],
        ),
      ),
    );
  }
}
