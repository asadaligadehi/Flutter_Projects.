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
      title: 'Text field',
      color: Colors.lightGreenAccent,
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
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Text field'),
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
  var name = TextEditingController();
  var pass = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),

        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller:name,
                decoration: InputDecoration(
                 // suffixText: "Username",
                  hintText: "Username",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye), onPressed: () {  },
                  ),
                  focusedBorder:OutlineInputBorder (
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      color: Colors.green,
                          width: 2,
                    )

                  ),
                    border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                )

                ),
              ),
              Container(
                height: 15,
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                controller: pass,
                decoration: InputDecoration(
                  hintText: "Password",
                 // suffixText: "Password",
                    /*prefixIcon: IconButton(
                      icon: Icon(Icons.wifi),onPressed: (){},
                    ),*/
                    suffixIcon: IconButton(
                      icon: Icon(Icons.password),onPressed: (){},
                    ),
                    border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                )),
              ),
              ElevatedButton(onPressed: (){
                String Uname = name.text.toString();
                String Upass = pass.text;
                print("Name: $Uname, Password: $Upass");
              }, child: Text("Login",style: TextStyle(color: Colors.yellowAccent),))
            ],
          ),
        )

    );
  }
}
