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
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Container(
                        height: 48,
                        width: 48,
                        // color: AppColors.storyChatScreenLight,
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          border: Border.all(
                            color: AppColors.storyChatScreenLight,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Icons.add, color: Colors.black),
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
          Divider(color: Colors.blue),
          Uihelper.customTextField(
            controller: searchController,
            hintText: "Search",
            textInputType: TextInputType.name,
            context: context,
            icondata: CupertinoIcons.search,
          ),
        ],
      ),
    );
  }
}
