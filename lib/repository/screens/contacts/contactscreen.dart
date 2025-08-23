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
    List<Map> contactDetails = [
      {
        "img": "av1.png",
        "name": "Athalia Putri",
        "last seen": "Last seen yesterday",
      },
      {"img": "av2.png", "name": "Erlan Sadewa", "last seen": "Online"},
      {
        "img": "av3.png",
        "name": "Midala Huera",
        "last seen": "Last seen 3 hours ago",
      },
      {"img": "av4.png", "name": "Nafisa Gitari", "last seen": "Online"},
      {"img": "av5.png", "name": "Raki Devon", "last seen": "Online"},
      {
        "img": "av6.png",
        "name": "Salsabila Akira",
        "last seen": "Last seen 30 minutes ago",
      },
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // toolbarHeight: 90,
          title: Uihelper.customText(
            text: "Contacts",
            fontsize: 18,
            context: context,
            fontweight: FontWeight.bold,
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
              Expanded(
                child: ListView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: contactDetails.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 15),
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

                          onLongPress: () {},
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
