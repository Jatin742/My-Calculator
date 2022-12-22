import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sizebox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 200,
      child: ElevatedButton(onPressed: (){},child: Text("Click"),),
    );
  }

}