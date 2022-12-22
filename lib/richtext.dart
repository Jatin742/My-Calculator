import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class richtext extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            color: Colors.black,
                fontSize: 21,
          ),
          children: <TextSpan>[
            TextSpan(text: "Hello "),
            TextSpan(text: 'World ', style: TextStyle(fontSize: 34,color: Colors.blue,fontWeight: FontWeight.bold)),
            TextSpan(text: 'Welcome to',),
            TextSpan(text: ' Flutter', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 43,color: Colors.deepOrangeAccent,fontStyle: FontStyle.italic))
          ]
        ),
      ),
    );
  }

}