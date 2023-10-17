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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});





  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Position widget"),
      ),


      //postioned widgets are set any where on the screen
             //left,
        //     top,
        //     right,
        //     bottom,
        //     width,
        //     height,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        child: Stack(
          children: [
            Positioned(
              right: 10,
              bottom: 10,
              child: Container(
                color: Colors.orange,
                height: 100,
                width: 100,
              ),

            ),
            Container(
              color: Colors.greenAccent,
              height: 100,
              width: 100,

            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                color: Colors.white,
                height: 100,
                width: 100,
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ),
            Center(
              child: Container(
                color: Colors.black,
                height: 100,
                width: 100,
              ),
            )
          ],
        ),
      )
    );
  }
}
