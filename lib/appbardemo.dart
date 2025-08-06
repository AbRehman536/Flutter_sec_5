import 'package:flutter/material.dart';

class Appbardemo extends StatelessWidget {
  const Appbardemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 30,),
        title: Text("App Bar Demo",style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: Colors.white
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.notification_add,color: Colors.white,size: 30,),
          Icon(Icons.bookmark,color: Colors.white,size: 30,),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        onPressed: (){},child: Icon(Icons.add,color: Colors.white,),),

      body: Column(
       crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(Icons.account_balance,size: 30,),
        Text("Name",style: TextStyle(fontSize: 30),),
        Text("Age",style: TextStyle(fontSize: 30),),
        Text("Class",style: TextStyle(fontSize: 30),),
        Text("Contact",style: TextStyle(fontSize: 30),),


      ],),
    );
  }
}
