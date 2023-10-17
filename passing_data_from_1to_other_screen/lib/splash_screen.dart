import 'dart:async';

import 'package:flutter/material.dart';
import 'package:passing_data_from_1to_other_screen/main.dart';

class Splash extends StatefulWidget{
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder:
      (context)=>MyHomePage()
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.black,
          child: Center(child: Text("Welcome to My App",style: TextStyle(fontSize: 30,color: Colors.white),))),
    );

  }
}