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
      title: 'Date Time',
      theme: ThemeData(


        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: ''),
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

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var datetime = DateTime.now();

    return Scaffold(
      appBar: AppBar(

        title: Text('Date Time'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("date time : $datetime",style: TextStyle(fontSize: 20,color: Colors.green),),
          ElevatedButton(onPressed: (){
            setState(() {

            });
          }, child: Container(
            color: Colors.red,
              child: Text("click for update",style: TextStyle(color: Colors.black),)))
        ],
      )

    );
  }
}
