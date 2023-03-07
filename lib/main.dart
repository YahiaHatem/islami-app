import 'package:flutter/material.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/home/sure_detals_screen.dart';
import 'package:islami/my_them.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThem.lightThem,
      routes: {
        HomeScreen.routename:(_)=> HomeScreen(),
        SureDetails.routename:(_)=> SureDetails(),},
      initialRoute:HomeScreen.routename ,
    );
  }
}