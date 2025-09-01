import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Grid View"),
        centerTitle: true,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            mainAxisExtent: 60,
          ),
          itemCount: 13,
          itemBuilder: (context, child){
            return Container(
              color: Colors.blue,
              child: Column(children: [
                Icon(Icons.person,size: 50,),
              ],),
            );
          })
    );
  }
}
