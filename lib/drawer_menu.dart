import 'package:flutter/material.dart';

class DrawerMenuDemo extends StatelessWidget {
  const DrawerMenuDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer Menu"),),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 300,
              color: Colors.black,
              child: DrawerHeader(
                  child: Center(child: Text("My App Drawer",style: TextStyle(fontSize: 30,color: Colors.white),))),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(child:
      Text("Scroll right side to open drawer menu"),),
    );
  }
}
