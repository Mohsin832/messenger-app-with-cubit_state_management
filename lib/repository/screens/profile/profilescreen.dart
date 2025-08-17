import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDarkColor
            : AppColors.scaffoldLightColor,
        title: Uihelper.customText(
          text: "Your Profile",
          fontsize: 18,
          context: context,
          fontweight: FontWeight.w600,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back),
        ),
      ),
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? AppColors.scaffoldDarkColor
          : AppColors.scaffoldLightColor,
    );
  }
}
