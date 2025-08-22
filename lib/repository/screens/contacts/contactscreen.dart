import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/domain/constants/cubits/themecubit.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Contactscreen extends StatelessWidget {
  const Contactscreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
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
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Uihelper.customTextField(
                controller: searchController,
                hintText: "Search",
                textInputType: TextInputType.name,
                context: context,
                icondata: Icons.search,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
