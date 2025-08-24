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
    required BuildContext context,
  }) {
    return SizedBox(
      height: 52,
      width: 237,
      child: ElevatedButton(
        onPressed: () {
          callBack();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor:
              buttonColor ??
              (Theme.of(context).brightness == Brightness.dark
                  ? AppColors.buttonDarkColor
                  : AppColors.buttonLightColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),

        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: 14,
            fontFamily: "bold",

            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  static customTextField({
    required TextEditingController controller,
    required String hintText,
    required textInputType,
    required BuildContext context,
    required IconData icondata,
  }) {
    return Container(
      height: 36,
      width: 350,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.containerDarkColor
            : AppColors.containerLightColor,
      ),

      child: TextField(
        // textAlign: TextAlign.start,
        controller: controller,
        keyboardType: textInputType,
        textAlignVertical: TextAlignVertical.center,

        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(icondata, color: AppColors.iconLightColor),
          isDense: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.borderTextFieldDarkModeColor
                  : AppColors.borderTextFieldLightModeColor,
              width: 1.9,
            ),
          ),

          // border: InputBorder.none,
          hintStyle: TextStyle(
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.hintTextDarkColor
                : AppColors.hintTextLightColor,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
