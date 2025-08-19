import 'package:chatapp/repository/screens/chat%20screen/chatscreen.dart';
import 'package:chatapp/repository/screens/contacts/contactscreen.dart';
import 'package:chatapp/repository/screens/more%20screen/morescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottomnavigationscreen extends StatefulWidget {
  const Bottomnavigationscreen({super.key});

  @override
  State<Bottomnavigationscreen> createState() => _BottomnavigationscreenState();
}

class _BottomnavigationscreenState extends State<Bottomnavigationscreen> {
  int currentIndex = 0;
  List<Widget> screens = [Contactscreen(), Chatscreen(), Morescreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "contacts"),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_2),
            label: "chats",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "more"),
        ],
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      body: IndexedStack(index: currentIndex, children: screens),
    );
  }
}
