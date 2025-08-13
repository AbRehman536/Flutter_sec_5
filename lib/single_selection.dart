import 'package:flutter/material.dart';

class SingleSelectionDemo extends StatefulWidget {
  const SingleSelectionDemo({super.key});

  @override
  State<SingleSelectionDemo> createState() => _SingleSelectionDemoState();
}

class _SingleSelectionDemoState extends State<SingleSelectionDemo> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Single Selection"),),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, i ){
          final isSelected = selectedIndex == i;
          return ListTile(
            onTap: (){
              setState(() {
                selectedIndex = isSelected ? -1 : i ;
              });
            },
            tileColor: isSelected ? Colors.blue : Colors.white,
            textColor: isSelected ? Colors.white : Colors.black,
            iconColor: isSelected ? Colors.white : Colors.black,
            leading: Icon(Icons.person),
            title: Text("Single ,$i"),
            subtitle: Text("Selection Demo, $selectedIndex"),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
          );
        }
      ),
    );
  }
}
