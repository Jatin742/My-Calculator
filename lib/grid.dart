import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class grid extends StatelessWidget {
  var arr=[Colors.green , Colors.red,Colors.yellow,Colors.orange,Colors.purple,Colors.indigo,Colors.blue,Colors.black];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: GridView.builder(itemBuilder: (context, index) {
        return Container(color: arr[index],);
      }, itemCount: arr.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 11,
            mainAxisSpacing: 11
        ),
      ),
    );
  }
}