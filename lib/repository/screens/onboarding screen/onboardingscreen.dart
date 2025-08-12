import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/domain/constants/cubits/themecubit.dart';
import 'package:chatapp/repository/screens/login/loginscreen.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).brightness == Brightness.dark
              ? AppColors.scaffoldDarkColor
              : AppColors.scaffoldLightColor,
          actions: [
            IconButton(
              onPressed: () {
                BlocProvider.of<ThemeCubit>(context).toggletheme();
              },
              icon: Icon(Icons.dark_mode_outlined),
            ),
          ],
        ),
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
                context: context,
              ),
              Uihelper.customText(
                text: "your family and friends",
                fontsize: 24,
                fontfamily: "bold",
                fontweight: FontWeight.bold,
                context: context,
              ),
              Uihelper.customText(
                text: "over countries",
                fontsize: 24,
                fontfamily: "bold",
                fontweight: FontWeight.bold,
                context: context,
              ),
            ],
          ),
        ),
        floatingActionButton: Uihelper.customButton(
          buttonColor: Theme.of(context).brightness == Brightness.dark
              ? AppColors.buttonDarkColor
              : AppColors.buttonLightColor,
          buttonName: "Start Messaging ",
          context: context,
          callBack: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Loginscreen()),
            );
          },
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
      ),
    );
  }
}
