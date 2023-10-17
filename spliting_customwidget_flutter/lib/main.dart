import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Custom widget'),
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
//  int _counter = 0;

  void _incrementCounter() {
    setState(() {

   //   _counter++;
    });
  }

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
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  color: Colors.yellowAccent,
                ),
                Container(
                  color: Colors.yellowAccent,
                )
              ],
            ) ,
          ) ,

          Container(
            child: Row(
              children: [
                Container(
                  color: Colors.yellowAccent,
                  child: Icon(Icons.account_circle_rounded,size: 40,),
                ),
                Container(
                  color: Colors.lightGreenAccent,
                  child:Icon(Icons.account_circle_rounded,size: 40,) ,
                )
              ],
            ) ,
          ),
          Container(
            child: Row(
              children: [
                Container(
                  color: Colors.orange,
                  child: Icon(Icons.account_circle_rounded,size: 40,),
                ),
                Container(
                  color: Colors.blue,
                  child:Icon(Icons.account_circle_rounded,size: 40,) ,
                )
              ],
            ) ,
          ) ,

          Container(
            child: Row(
              children: [
                Container(
                  color: Colors.purpleAccent,
                  child: Icon(Icons.account_circle_rounded,size: 40,),
                ),
                Container(
                  color: Colors.white,
                  child:Icon(Icons.account_circle_rounded,size: 40,) ,
                )
              ],
            ) ,
          )
        ],
      )
    );
  }
}
class logo extends StateFuLLWidgetWidget{

}

class StateFuLLWidgetWidget {
}
