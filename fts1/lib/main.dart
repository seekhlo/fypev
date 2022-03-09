import 'package:flutter/material.dart';
import 'package:fts1/Main_Page/dashboard.dart';
import 'Login/login_screen.dart';
import 'Main_Page/dashboard.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home: DashBoard(),
    );
  }
}