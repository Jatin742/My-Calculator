import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class stack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.black,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.green,
        ),
      ],);
  }
}