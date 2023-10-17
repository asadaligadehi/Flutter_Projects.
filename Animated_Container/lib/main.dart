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
  var _height = 200.0;
  var _width = 100.0;
  Color Clr = Colors.black;
  bool b = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(""),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            color: Clr,
              height: _height,
              width: _width,
              curve: Curves.fastLinearToSlowEaseIn, // speed of animation duration the execute slow ,fast or middle speed
              duration: Duration(seconds: 3)
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              if(b){
                  Clr =Colors.orange;
                _width = 100.0;
                _height= 200.0;
                b =false;
              }else{
                _width= 200.0;
                _height= 100.0;
                Clr = Colors.lightGreenAccent;
                b= true;

              }
            });
          }, child: Text("Animate"))
        ],
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
