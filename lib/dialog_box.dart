import 'package:flutter/material.dart';

class DialogBoxDemo extends StatefulWidget {
  const DialogBoxDemo({super.key});

  @override
  State<DialogBoxDemo> createState() => _DialogBoxDemoState();
}

class _DialogBoxDemoState extends State<DialogBoxDemo> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text("LOGIN"),
        centerTitle: true,
        actions: [
          Icon(Icons.notification_add),
          Icon(Icons.bookmark),
        ],
      ),
      body: Column(children: [
        SizedBox(height: 15,),
        Text("Welcome to Login Page",style: TextStyle(fontSize: 25),),
        TextField(
          controller: emailController,
          decoration: InputDecoration(
            label: Text("Email"),
            hintText: 'abdullah@gmail.com',
            prefixIcon: Icon(Icons.email),
            suffixIcon: Icon(Icons.person),
          ),
        ),
        TextField(
          controller: passwordController,
          decoration: InputDecoration(
            label: Text("Password"),
            hintText: 'password must be more than 8 digits',
            prefixIcon: Icon(Icons.lock),
            suffixIcon: Icon(Icons.visibility),
          ),),
        SizedBox(height: 10,),
        Text("Forget Password"),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: (){
          showDialog(
            barrierDismissible: false,
              context: context,
              builder: (BuildContext context){
                return AlertDialog(
                  title: Text("Message"),
                  content: Text("Login Successfully"),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("No")),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Yes")),
                  ],
                );
              });
          if(emailController.text.isEmpty){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Email cannot be empty")));
            return;
          }
          if(passwordController.text.isEmpty){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Password cannot be empty")));
            return;
          }
          if(passwordController.text.length < 8){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Password cannot be less than 8 digits")));
            return;
          }
        },

             child: Text("Login")),
        SizedBox(height: 10,),
        Text("Don't have account ?"),
        SizedBox(height: 10,),
        Text("Sign Up"),
      ],),
    );
  }
}
