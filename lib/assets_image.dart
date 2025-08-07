import 'package:flutter/material.dart';
class AssetsImageDemo extends StatelessWidget {
  const AssetsImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Assets Image"),),
      
      body: Column(children: [
        Image.asset("assets/images/first.jpg"),
      ],),
    );
  }
}
