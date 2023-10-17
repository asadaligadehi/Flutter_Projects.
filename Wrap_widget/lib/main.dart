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



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("wrap widget"),
      ),
      body: Wrap(
          direction: Axis.horizontal,
          spacing: 11,
          runSpacing: 11,

          children: [
            Container(
              width: 70,
              height: 100,
              color: Colors.cyan,
            ),
            Container(
              width: 70,
              height: 100,
              color: Colors.brown,
            ),
            Container(
              width: 70,
              height: 100,
              color: Colors.pinkAccent,
            ),
            Container(
              width: 70,
              height: 100,
              color: Colors.lightGreenAccent,
            ),
            Container(
              width: 70,
              height: 100,
              color: Colors.orange,
            ),
            Container(
              width: 70,
              height: 100,
              color: Colors.black,
            ),
          ],
        ),
      );

  }
}
