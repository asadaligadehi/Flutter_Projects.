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

        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var arr = [1,2,3,4,5,6,7,8,9,10,11,12,13];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("listWheelScrollView 3D"),
      ),
      body: ListWheelScrollView(
        itemExtent: 100,
        children:
                arr.map((value) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      child:
                      Center(
                          child:
                      Text("$value",style: TextStyle(fontSize: 30,color: Colors.black),)),
                      color: Colors.orange,
                      width: 200,
                    ),
                  ),
                ) ).toList(),

      )

    );
  }
}
