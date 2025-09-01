import 'package:flutter/material.dart';
import 'package:flutter_sec_5/listtiledemo.dart';
import 'package:flutter_sec_5/login_page.dart';
import 'package:flutter_sec_5/single_selection.dart';

class BottomBarDemo extends StatefulWidget {
  const BottomBarDemo({super.key});

  @override
  State<BottomBarDemo> createState() => _BottomBarDemoState();
}

class _BottomBarDemoState extends State<BottomBarDemo> {
  int selectedIndex = 0;
  List<Widget> screenList = [LoginPage(), SingleSelectionDemo(), ListTileDemo()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
          unselectedItemColor: Colors.white60,
          selectedItemColor: Colors.white,
          showUnselectedLabels: false,
          onTap: (val){
            setState(() {
              selectedIndex =val;
            });
          },
          currentIndex: selectedIndex,
          items:[
        BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home' ),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
      ]),


    );
  }
}
