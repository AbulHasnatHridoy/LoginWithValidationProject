import 'package:flutter/material.dart';
import 'package:project/loginPage.dart';
void main()=>runApp(myApp());
var assetsImage= AssetImage('assets/loginhack.jpeg');
var image = Image(image: assetsImage,fit: BoxFit.cover,);
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        brightness: Brightness.light
      ),
      home: LoginPage(),
    );
  }
}