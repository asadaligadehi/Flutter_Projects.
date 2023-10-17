import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen/main.dart';

class Splash_Screen extends StatefulWidget{
  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration (seconds:5) , () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context)=>MyHomePage())
      );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        //  height: double.infinity,
        // width: double.infinity,
        color: Color.fromARGB(255, 157, 133, 98),

        child: Center(
            child:

            ListTile(
              leading: Icon(Icons.calculate, size: 70,),
              subtitle: Text("Calulator",style: TextStyle(fontSize: 25,color: Colors.white),),
            )
        ),

      ),


    );



  }
}