import 'package:flutter/material.dart';

class round_button extends StatelessWidget{
  final Icon? icon;
  final Color? bcolor;
  final TextStyle? textStyle;
  final VoidCallback? callback;


  round_button(
  {  required this.icon, this.bcolor = Colors.orange, this.textStyle, this.callback }
      );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      callback!();
    },

        child: icon!= null? Row(
         children: [
           icon!,
           Text("button")
         ],

        
    ) : Text("click"));
  }

}