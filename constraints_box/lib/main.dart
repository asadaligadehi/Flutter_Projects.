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
        title: Text("Constraint box"),
      ),


      // constraint box is used to set the constraints of any widget in the screen
        // it have the four contraints like minHeight,minWidth,maxheight ,maxWidth
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 50,
          minWidth: 50,
          maxHeight: 60,
          maxWidth: 100,
        ),
        child: Container(
          color: Colors.cyan,
          child: Text("contraint box is used to set the constraints of the widget",
          style: TextStyle(fontSize: 20, overflow: TextOverflow.fade),
            // overflow shows the shade of the widget which tells that it is continue but dont show due to specific height and width
          ),
        ),
      )

    );
  }
}
