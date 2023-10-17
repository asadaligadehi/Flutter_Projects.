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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var arrName =['asad','ali','gadehi','roll no','20sw042'];    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Practice',),

      ),


     //****************listview**************************************************
     /* body: Center(
        child: ListView(     //list view
          scrollDirection: Axis.horizontal,   //direction of the items

          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('hellow', style: TextStyle(color: Colors.green,fontSize: 26),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('hellow', style: TextStyle(color: Colors.orange,fontSize: 26),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('hellow', style: TextStyle(color: Colors.blue,fontSize: 26),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('hellow', style: TextStyle(color: Colors.black,fontSize: 26),),
            ),
          ],
        ),
      )*/
      //listview.builder used*******************************************
      /*body: ListView.builder(itemBuilder: (context, index) {
        return Text(arrName[index],style: TextStyle(fontSize: 26),);
      },
        itemCount: arrName.length,  //length of the array
        itemExtent: 200,  // space in b/w items
       // scrollDirection: Axis.horizontal, // items directions
      ),

       */
      //***********listview,separated separate the two items with any design
      body: ListView.separated(itemBuilder: (context, index) {
        return Container(
          child:  Text(arrName[index],style: TextStyle(fontSize: 26),),
          color: Colors.cyan,
        );


      } ,
        itemCount: arrName.length, //length of the array
        separatorBuilder: (context, index){
        return Divider(height: 200,thickness: 8,color: Colors.green,);

        },

      ),
    );
  }
}
