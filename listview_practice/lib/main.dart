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
   var arrNames= ['asad','awais','aashir','hassan','usman'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('listview pratice'),
      ),


      /*
      //**********************Listview practice and use of the padding scroll direction and reverse ****************************
      body: Padding(   //padding will set the space b/w the words or containers
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.horizontal,    // scroll direction change the direction of the list either horizentally or vertically
         // reverse: true,    if you want to reverse the list use the key reverse so by default it is false make it true for the reverse
          children: [      // the childerns are the array of the listview in which we store the data
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('list',style: TextStyle(fontSize: 22,color: Colors.blue,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('view',style: TextStyle(fontSize: 22,color: Colors.pinkAccent,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('practice',style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('overview',style: TextStyle(fontSize: 22,color: Colors.orange,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      )

       */

       */


      //*********************listview.builder with the help of array for the dynamic values********************
      body: ListView.builder(itemBuilder:(context, index) {
        //ctrl+space will show you the context,index
        return Text(arrNames[index], style: TextStyle(fontSize: 25,color: Colors.orange),);


      },
        itemCount: arrNames.length,
        itemExtent: 50,
       // scrollDirection: Axis.horizontal,
      ),
    );
  }
}
