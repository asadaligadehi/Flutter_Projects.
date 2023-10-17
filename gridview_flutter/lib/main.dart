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
      debugShowCheckedModeBanner: false,
      title: 'Grid view',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'GridView'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          GridView.count(crossAxisCount: 2,
             crossAxisSpacing: 11,
             mainAxisSpacing: 11,
             children: [
               Container( color: Colors.yellowAccent, height: 100,width: 50,),
               Container(color: Colors.orange, height: 100,width: 50,),
               Container(color: Colors.lightGreenAccent, height: 100,width: 50,),


            ],

          ),
          Container(
            height: 100,
          ),
          Container(height: 100,
          child: GridView.extent(maxCrossAxisExtent: 50,
            crossAxisSpacing: 11,
            mainAxisSpacing: 11,
            children: [
              Container( color: Colors.blue, height: 100,width: 50,),
              Container(color: Colors.pinkAccent, height: 100,width: 50,),
              Container(color: Colors.brown, height: 100,width: 50,),

            ],
          ),)

        ],
      ),




    );
  }
}
