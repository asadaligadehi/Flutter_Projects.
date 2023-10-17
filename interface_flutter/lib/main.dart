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
      title: 'App', color: Colors.grey,
      debugShowCheckedModeBanner: false,
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
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'App'),
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
    var name = ['asad','zohaib','hassan','Niaz','awais','ameer','aamir','noor','junaid','hamid','hyder','ali','ayaz','ahmed','waseem'];
    var no = ['0303352582','03476727882','0374834288','033683847','03473746','03456737','03463768','0347478','03573577','03556737','0347376','034563677','1155527','4656367','6662888'];
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.contact_phone,color: Colors.black,size: 30,),
        title: Text('Phone'),

        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.wifi,color: Colors.red,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.chat)),
          IconButton(onPressed: (){}, icon: Icon(Icons.account_circle_rounded,color: Colors.yellowAccent,)),

        ],
      ),
      body: ListView.separated(itemBuilder:(context , index){
        return  ListTile(
          leading:Icon(Icons.call,color: Colors.green,size: 30,),
          title: Text(name[index],style: TextStyle(fontSize: 22),),
          subtitle: Text(no[index]),
          trailing:  Icon(Icons.chat,color: Colors.blue,),



        );


      }, separatorBuilder: (BuildContext context, int index) {
        return Divider(height: 5,thickness: 1,color: Colors.black,);
      },itemCount: name.length,


      )

    );
  }
}
