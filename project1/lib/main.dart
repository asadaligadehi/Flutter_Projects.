import 'package:flutter/material.dart';
import 'package:project1/dashboard.dart';
import 'package:project1/signup.dart';
import 'package:project1/splash.dart';
import 'package:intl/intl.dart';

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

        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Login Page",style: TextStyle(fontSize: 30,color: Colors.red),),
      ),
      body:  Container(

        decoration: BoxDecoration(
         /* gradient: LinearGradient(
            colors: [
              Colors.grey,
              Colors.white
            ]
          )

          */
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red, Colors.white], // Customize your gradient colors
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Login", style: TextStyle(color: Colors.white,fontSize:30,fontWeight: FontWeight.bold ),),
                    )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)


                          ),
                        ),
                      ),
                    ),

                    ElevatedButton(onPressed: (){
                      var email= _emailController.text.toString();
                      var pass = _passwordController.text.toString();

                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Dashboard()));
                    },
                        child: Text("Login ")),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Create an account ?"),
                    ),

                    InkWell(
                        onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=> Signup()),
                           );
                        },
                        child: Text("Sign up",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold), ))

                  ],
                ),
              ),
            ),
          ),
        ),
      )

    );
  }
}
