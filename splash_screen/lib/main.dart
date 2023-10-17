import 'package:flutter/material.dart';
import 'package:splash_screen/splash_screen.dart';

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

        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var num1= TextEditingController();
  var num2= TextEditingController();
  var result="";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Calculator"),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "Enter Number 1"
                ),
                controller: num1,
                keyboardType: TextInputType.number,

              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Enter Number 2"
                ),
                controller: num2,
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    var num3= int.parse(num1.text.toString() );
                    var num4= int.parse(num2.text.toString());
                    var sum = num3+num4;
                    result= "The sum of $num3 and $num4 is $sum ";
                    setState(() {

                    });
                  }, child: Text("+",style: TextStyle(color: Colors.green),)),
                  SizedBox(
                    height: 15,
                  ),

                  ElevatedButton(onPressed: (){
                    var num3= int.parse(num1.text.toString() );
                    var num4= int.parse(num2.text.toString());
                    var diff = num3-num4;
                    result= "The difference of $num3 and $num4 is $diff ";
                    setState(() {

                    });
                  }, child: Text("-",style: TextStyle(color: Colors.green),)),
                  SizedBox(
                    height: 15,
                  ),

                  ElevatedButton(onPressed: (){
                    var num3= int.parse(num1.text.toString() );
                    var num4= int.parse(num2.text.toString());
                    var mul = num3*num4;
                    result= "The Multiplication of $num3 and $num4 is $mul ";
                    setState(() {

                    });
                  }, child: Text("*",style: TextStyle(color: Colors.green),)),
                  SizedBox(
                    height: 15,
                  ),

                  ElevatedButton(onPressed: (){
                    var num3= int.parse(num1.text.toString() );
                    var num4= int.parse(num2.text.toString());
                    var divid = num3/num4;
                    result= "The divid of $num3 and $num4 is $divid ";
                    setState(() {

                    });
                  }, child: Text("/",style: TextStyle(color: Colors.green),)),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("$result",style: TextStyle(fontSize: 25,color: Colors.green),),
              ),

            ],


          ),

        ),
      )


    );
  }
}
