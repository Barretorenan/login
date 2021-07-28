import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/View/Login.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Padaria Kipao',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Login(),
    );
  }
}

