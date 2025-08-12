import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("List Tile"),),
      
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, i){
          return Card(
            color: Colors.greenAccent,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("List Tile"),
              subtitle: Text("Flutter Class"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
          );
        }
      )
    );
  }
}
