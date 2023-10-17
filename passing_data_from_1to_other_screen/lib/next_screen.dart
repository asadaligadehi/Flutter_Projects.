import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:passing_data_from_1to_other_screen/main.dart';

class Next_Screen extends StatelessWidget{
  var name;
  Next_Screen(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$name",style: TextStyle(color: Colors.green),),

        /*  Image.asset(
            'assets/images/laptop.jpg'
          ),*/

          ElevatedButton(onPressed: (){
            Navigator.pop(context,
            MaterialPageRoute(builder: (context)=>MyHomePage())
            );
          }, child: Text("Back to home"))
        ],
      ),
    );
    
  }
  
}