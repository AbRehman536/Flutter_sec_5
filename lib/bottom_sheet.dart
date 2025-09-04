import 'package:flutter/material.dart';
import 'package:flutter_sec_5/listtiledemo.dart';
import 'package:flutter_sec_5/login_page.dart';
import 'package:flutter_sec_5/single_selection.dart';

class BottomSheetDemo extends StatelessWidget {
  const BottomSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Bottom Sheet"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              showModalBottomSheet(
                  context: context,
                  builder: (context){
                    return Column(
                      children: [
                      Card(
                      color: Colors.blue,
                      child: ListTile(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ListTileDemo()));
                        },
                        leading: Icon(Icons.settings),
                        title: Text("Settings"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                        Card(
                      color: Colors.green,
                      child: ListTile(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                        },
                        leading: Icon(Icons.person),
                        title: Text("Profile"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                        Card(
                      color: Colors.red,
                      child: ListTile(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleSelectionDemo()));
                        },
                        leading: Icon(Icons.chat),
                        title: Text("Chats"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                        Card(
                      color: Colors.yellow,
                      child: ListTile(
                        onTap: (){
                          Navigator.pop(context);
                        },

                        leading: Icon(Icons.logout),
                        title: Text("Logout"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                      ],
                    );
                  });
            }, child: Text("Show Bottom Sheet")),
          ],
        ),
      ),
    );
  }
}
