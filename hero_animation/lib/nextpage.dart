import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class nextpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        child: Hero(
          tag: 'background',
          // when we use the Hero it must take the (tag) otherwise it show the error
          child: Image.asset('assets/images/frame.png',width: 200,height: 200,),
        )
      ),
    );

  }
}



