import 'package:flutter/material.dart';

class PopupMenuDemo extends StatelessWidget {
  const PopupMenuDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Pop Up Menu"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: PopupMenuButton<String>(
              onSelected: (value){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Selected item $value")));
              },
                itemBuilder: (BuildContext context){
                  return [
                    PopupMenuItem(
                        value: 'Profile',
                        child: Text("Profile")),
                    PopupMenuItem(
                        value: 'Settings',
                        child: Text("Settings")),
                    PopupMenuItem(
                        value: 'Logout',
                        child: Text("Logout")),
                  ];

                }),
          )
        ],
      ),
      body: Center(child:
        Text("Tap the 3 dots menu in AppBar"),),
    );
  }
}
