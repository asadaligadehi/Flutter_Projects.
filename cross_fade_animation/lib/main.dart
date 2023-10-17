import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

 

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  bool first = true;

  @override
  void initState() {
    super.initState();
   /* Timer(Duration(seconds: 4), () {
      rload();
    });*/

    // if u uncomment the timer then u have to comment the elevated button
  }

  void rload() {
    setState(() {
      if(first) {
        first = false;
      }else{
        first = true;
      }
    });
  }


    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text("Cross fade animation"),
          ),
          body: Center(
            /*
            cross fade animation is used when one widget is invisible then
            it replace with another widget with animation

             */
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedCrossFade(
                    duration: Duration(seconds: 2),
                    firstChild: Container(
                      color: Colors.orange,
                      width: 200,
                      height: 100,
                    ),
                    secondChild: Image.asset(
                      "assets/images/flutter.png", width: 200, height: 100,),
                    crossFadeState: first ? CrossFadeState.showFirst : CrossFadeState.showSecond
                    /*
                    ? checks the condition if it true then execute the first container
                     after the colon(:) then it execute the 2nd container

                     */

                ),
                ElevatedButton(onPressed: (){
                  rload();
                }, child: Text(" animate"))
              ],
            ),
          )
      );
    }
  }

