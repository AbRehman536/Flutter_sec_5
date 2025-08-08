import 'package:flutter/material.dart';

class NetworkImageDemo extends StatelessWidget {
  const NetworkImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Network Image"),),
      body: Column(children: [
        Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1zwhySGCEBxRRFYIcQgvOLOpRGqrT3d7Qng&s")
      ],),
    );
  }
}
