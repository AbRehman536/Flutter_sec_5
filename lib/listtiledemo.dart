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
          return
          Card(
            color: Colors.white60,
            child: ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text("List Tile"),
              subtitle: Text("List View Builder Topic"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          );
        }
      )
    );
  }
}
