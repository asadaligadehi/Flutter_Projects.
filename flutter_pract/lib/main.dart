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
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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


    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Flutter App'),
        backgroundColor: Colors.pink,
      ),

      body: Image.asset('-assets/images/img_1.png'),
      /*
      OutlinedButton(
          child: Text('Click here',style: TextStyle(fontSize: 25,
          backgroundColor: Colors.green,
          color: Colors.black),),
          onPressed: (){
            print('Welocme to the app');
          },

        ),

       */




        /*
         Center(
        child: Text('App',style: TextStyle(
          fontSize: 22,
          color: Colors.black,
          backgroundColor: Colors.amber,
          fontWeight:FontWeight.w800,
        ),),
      )

         */

    );
  }
}
