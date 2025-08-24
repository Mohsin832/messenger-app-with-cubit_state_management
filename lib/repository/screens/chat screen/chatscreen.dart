import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/domain/constants/cubits/themecubit.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    List<Map> contactDetails = [
      {
        "img": "av1.png",
        "name": "Athalia Putri",
        "last seen": "Last seen yesterday",
        "time": "10:12 pm",
        "chats pending": "1",
      },
      {
        "img": "av2.png",
        "name": "Erlan Sadewa",
        "last seen": "Online",
        "time": "10:12 pm",
        "chats pending": "1",
      },
      {
        "img": "av3.png",
        "name": "Midala Huera",
        "last seen": "Last seen 3 hours ago",
        "time": "12:05 pm",
        "chats pending": "1",
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Uihelper.customText(
          text: "Chats",
          fontsize: 18,
          context: context,
          fontweight: FontWeight.bold,
        ),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDarkColor
            : AppColors.scaffoldLightColor,

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.mark_chat_read_outlined),
          ),
          IconButton(
            onPressed: () {
              BlocProvider.of<ThemeCubit>(context).toggletheme();
            },
            icon: Icon(Icons.dark_mode_outlined),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10),

          Row(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Container(
                        height: 48,
                        width: 48,
                        // color: AppColors.storyChatScreenLight,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: AppColors.storyChatScreenLight,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? AppColors.scaffoldDarkColor
                              : AppColors.scaffoldLightColor,
                        ),
                      ),
                      Uihelper.customText(
                        text: " Your Story",
                        fontsize: 14,
                        context: context,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Divider(color: Colors.white10),
          SizedBox(height: 9),

          Uihelper.customTextField(
            controller: searchController,
            hintText: "Search",
            textInputType: TextInputType.name,
            context: context,
            icondata: CupertinoIcons.search,
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: contactDetails.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: InkWell(
                    child: ListTile(
                      leading: Uihelper.customImage(
                        imageurl: contactDetails[index]["img"].toString(),
                      ),
                      title: Uihelper.customText(
                        text: contactDetails[index]["name"].toString(),
                        fontsize: 14,
                        context: context,
                        fontweight: FontWeight.w600,
                      ),
                      subtitle: Uihelper.customText(
                        text: contactDetails[index]["last seen"].toString(),
                        fontsize: 12,
                        context: context,
                      ),
                      trailing: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Uihelper.customText(
                            text: contactDetails[index]["time"].toString(),
                            fontsize: 12,
                            context: context,
                            fontweight: FontWeight.w400,
                          ),
                          SizedBox(height: 5),
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.blue,
                            child: Uihelper.customText(
                              text: contactDetails[index]["chats pending"],
                              fontsize: 10,
                              context: context,
                              fontweight: FontWeight.w600,
                              color:
                                  Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ],
                      ),

                      onLongPress: () {},
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
