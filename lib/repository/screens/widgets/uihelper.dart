// import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Uihelper {
  static customImage({required String imageurl}) {
    return Image.asset("Assets/images/$imageurl");
  }

  static customText({
    required String text,
    required double fontsize,
    String? fontfamily,
    FontWeight? fontweight,
    Color? color,
    // required BuildContext context
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily ?? "regular",
        fontWeight: fontweight ?? FontWeight.normal,
        // color: color ?? (Theme.of(context).brightness == Brightness.dark)
        //     ? AppColors.textDarkColor
        //     : AppColors.textLightColor,
      ),
    );
  }
}
