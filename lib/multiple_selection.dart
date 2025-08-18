import 'package:flutter/material.dart';

class MultipleSelectionDemo extends StatefulWidget {
  const MultipleSelectionDemo({super.key});

  @override
  State<MultipleSelectionDemo> createState() => _MultipleSelectionDemoState();
}

class _MultipleSelectionDemoState extends State<MultipleSelectionDemo> {
  List<int> selectedIndex = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Multi Selection"),),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, i){
         return ListTile(
           onTap: (){
             if(selectedIndex.contains(i)){
               selectedIndex.remove(i);
             }
             else{
               selectedIndex.add(i);
             }
             setState(() {});
           },
           tileColor: selectedIndex.contains(i) ? Colors.blue : Colors.white70,
           textColor: selectedIndex.contains(i) ? Colors.white : Colors.black,
           iconColor: selectedIndex.contains(i) ? Colors.white : Colors.black,
            leading: Icon(Icons.person),
            title: Text("Multiple Selection, $selectedIndex"),
           subtitle: Text("$i"),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
          );
        }
      ),
    );
  }
}
