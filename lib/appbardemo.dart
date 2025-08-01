import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back_ios_new,
          color: Colors.white,size: 30,),
        title: Text("App Bar Demo", style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w400,
            color: Colors.white),),
        centerTitle: true,
        actions: [
          Icon(Icons.notification_add,color: Colors.white,size: 25,),
          Icon(Icons.bookmark,color: Colors.white,size: 25,),
        ],
      ),
    );
  }
}
