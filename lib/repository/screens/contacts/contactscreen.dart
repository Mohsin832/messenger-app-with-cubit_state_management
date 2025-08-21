import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Contactscreen extends StatelessWidget {
  const Contactscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // toolbarHeight: 90,
          title: Uihelper.customText(
            text: "Contacts",
            fontsize: 18,
            context: context,
            fontweight: FontWeight.w600,
          ),
          backgroundColor: Theme.of(context).brightness == Brightness.dark
              ? AppColors.scaffoldDarkColor
              : AppColors.scaffoldLightColor,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
        ),
      ),
    );
  }
}
