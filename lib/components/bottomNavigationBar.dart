import 'package:flutter/material.dart';

class BottomNavigationBar extends StatefulWidget {
  const BottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
  int _selectedIndex = 0
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem> [
        BottomNavigationBarItem(icon: Icon(Icons.supervisor_account_rounded), label: "Users"),
        BottomNavigationBarItem(icon: Icon(Icons.message_rounded), label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.analytics_rounded), label:"Progress")
      ]
    );
  }
}
