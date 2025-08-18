import 'dart:ffi';

import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(height: 20),
            Stack(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor:
                      Theme.of(context).brightness == Brightness.dark
                      ? AppColors.circleAvatarDarkColor
                      : AppColors.circleAvatarLightColor,
                  child: Theme.of(context).brightness == Brightness.dark
                      ? Uihelper.customImage(imageurl: "profiledark.png")
                      : Uihelper.customImage(imageurl: "profileLight.png"),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 17,
                    backgroundColor:
                        Theme.of(context).brightness == Brightness.dark
                        ? Color(0xFFF7F7FC)
                        : Color(0xFF0F1828),
                    child: Icon(
                      Icons.add,

                      color: Theme.of(context).brightness == Brightness.dark
                          ? AppColors.scaffoldDarkColor
                          : AppColors.scaffoldLightColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Uihelper.customTextField(
              controller: firstNameController,
              hintText: "First Name (Required)",
              textInputType: TextInputType.name,
              context: context,
            ),
            SizedBox(height: 10),
            Uihelper.customTextField(
              controller: lastNameController,
              hintText: "Last Name (Optional)",
              textInputType: TextInputType.name,
              context: context,
            ),
          ],
        ),
      ),
      floatingActionButton: Uihelper.customButton(
        buttonName: "Save",
        callBack: () {},
        context: context,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
