// import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class Uihelper {
  static customImage({required String imageurl}) {
    return Image.asset("Assets/images/$imageurl");
  }

  static customText({
    required String text,
    required double fontsize,
    required BuildContext context,
    String? fontfamily,
    FontWeight? fontweight,
    Color? color,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily ?? "regular",
        fontWeight: fontweight ?? FontWeight.normal,
        color:
            color ??
            (Theme.of(context).brightness == Brightness.dark
                ? AppColors.textDarkColor
                : AppColors.textLightColor),
      ),
    );
  }

  static customButton({
    required String buttonName,
    required VoidCallback callBack,
    Color? buttonColor,
  }) {
    return SizedBox(
      height: 52,
      width: 237,
      child: ElevatedButton(
        onPressed: () {
          callBack();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonLightColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
