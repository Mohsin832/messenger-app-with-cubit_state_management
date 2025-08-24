import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Morescreen extends StatelessWidget {
  const Morescreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> moreOptions = [
      {"Title": "Account", "Icon": Icons.person_add_alt_1_outlined},
      {"Title": "Chats", "Icon": Icons.chat_outlined},
      {"Title": "Appereance", "Icon": Icons.wb_sunny_outlined},
      {"Title": "Notification", "Icon": Icons.notifications_none_rounded},
      {"Title": "Privacy", "Icon": Icons.privacy_tip_outlined},
      {"Title": "Data Usage", "Icon": Icons.folder_open_outlined},
      {"Title": "Help", "Icon": Icons.help_outline},
      {"Title": "Invite Your Friends", "Icon": Icons.mail_outline_sharp},
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDarkColor
            : AppColors.scaffoldLightColor,
        title: Uihelper.customText(
          text: "More",
          fontsize: 18,
          context: context,
          fontweight: FontWeight.bold,
          fontfamily: "bold",
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundColor: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.circleAvatarDarkColor
                  : AppColors.circleAvatarLightColor,
              child: Icon(
                Icons.person_2_outlined,
                color: Theme.of(context).brightness == Brightness.dark
                    ? AppColors.scaffoldLightColor
                    : AppColors.scaffoldDarkColor,
              ),
            ),
            title: Uihelper.customText(
              text: "Muhammad Mohsin",
              fontsize: 14,
              context: context,
              fontweight: FontWeight.bold,
              fontfamily: "bold",
            ),

            trailing: Icon(CupertinoIcons.forward),
            subtitle: Uihelper.customText(
              text: "+92 316 2115461",
              fontsize: 12,
              context: context,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: moreOptions.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: ListTile(
                    title: Uihelper.customText(
                      text: moreOptions[index]["Title"].toString(),
                      fontsize: 14,
                      context: context,
                    ),
                    leading: Icon(moreOptions[index]["Icon"] as IconData),
                    trailing: Icon(CupertinoIcons.forward),
                  ),
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
