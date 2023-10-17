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
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Cliper RRect"),
      ),
      body:

        //  **********Cliper Example on Continer******************************
     /*
      Center(
        child: ClipRRect(
        //  borderRadius: BorderRadius.circular(20),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.elliptical(20, 72)),
          child: Container(
            color: Colors.green,
            width: 200,
            height: 200,
          ),
        ),
      )

      */



      // ******************Cliper Example on Image******************************
      Center(
        child: ClipRRect(
          //  borderRadius: BorderRadius.circular(20),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.elliptical(20, 72)),
          child:Image.asset("assets/images/Human and AI.jpg")
        ),
      )



    );
  }
}
