import 'package:flutter/material.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          leading: Icon(Icons.arrow_back_ios),
          title: Text("Tab Bar"),
          centerTitle: true,
          bottom: TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: [
            Tab(icon: Icon(Icons.home),text: 'Home',),
            Tab(icon: Icon(Icons.person),text: 'Profile',),
            Tab(icon: Icon(Icons.settings),text: 'Settings',),
          ]),
        ),
        body: TabBarView(children: [
          Center(child: Column(children: [
            Text("Home"),
            Text("Notification"),
            Text("Chats"),
            Text("Settings"),
            Text("List"),
          ],),),
          Center(child: Text("Profile"),),
          Center(child: Text("Settings"),),
      
        ]),
      ),
    );
  }
}
