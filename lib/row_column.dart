import 'package:flutter/material.dart';

class RowColumnDemo extends StatelessWidget {
  const RowColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nested Row Column"),),
      body: Column(children: [
        Text("Abdullah Rehman",style: TextStyle(fontSize: 30),),
        Text("Age",style: TextStyle(fontSize: 30),),
        Text("Contact",style: TextStyle(fontSize: 30),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Icon(Icons.favorite_border),
          Column(children: [Icon(Icons.comment),
            Icon(Icons.person),],),

          Icon(Icons.bookmark),
        ],)
      ],),
    );
  }
}
