import 'package:flutter/material.dart';
import 'package:project/loginPage.dart';
import 'package:project/main.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Homepage",
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold
        ) ,),
      ),
      body: Title(color: Colors.lightBlue, 
      child: Center(
        child: Text("🎉 Welcome Hridoy!🎉",
        style: TextStyle(
          fontSize: 25.0,
          foreground: Paint(
            
          ),

        ),
        ),
      ),
      ),
    );

  }
}