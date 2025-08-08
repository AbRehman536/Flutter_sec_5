import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back),
        title: Text("LOGIN"),
        centerTitle: true,
        actions: [
          Icon(Icons.bookmark),
          Icon(Icons.notification_add),
        ],
      ),
      body: Column(children: [
        SizedBox(height: 15,),
        Text("Welcome to Login Page",style: TextStyle(fontSize: 25),),
        TextField(
          decoration: InputDecoration(
            label: Text("Email"),
            hintText: 'abcd@gmail.com',
            prefixIcon: Icon(Icons.account_balance),
            suffixIcon: Icon(Icons.email),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            label: Text("Password"),
            hintText: 'password should be more than 8 digits',
            prefixIcon: Icon(Icons.lock),suffixIcon: Icon(Icons.visibility),
          ),
        ),
        SizedBox(height: 10,),
        Text("Forget Password?"),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: (){}, child: Text("Login")),
        SizedBox(height: 15,),
        Text("Don't have account ? "),
        SizedBox(height: 10,),
        Text("Sign Up"),
      ],),
    );
  }
}
