import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class textedit extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _textedit();
}

class _textedit extends State<textedit>{
  var no1con=TextEditingController();
  var no2con=TextEditingController();
  var result="";
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow.shade200,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(controller: no1con,
            keyboardType: TextInputType.number,),
            TextField(controller: no2con,
            keyboardType: TextInputType.number,),
            Padding(
                padding: EdgeInsets.all(21.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    var no1=int.parse(no1con.text.toString());
                    var no2=int.parse(no2con.text.toString());
                    result="Sum is ${no2+no1}";
                    setState((){});
                  },child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.plus),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent
                  ),),

                  ElevatedButton(onPressed: (){
                    var no1=int.parse(no1con.text.toString());
                    var no2=int.parse(no2con.text.toString());
                    result="Difference is ${no1-no2}";
                    setState((){});
                  },child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.minus),
                    ],
                  ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent
                    ),),
                  ElevatedButton(onPressed: (){
                    var no1=int.parse(no1con.text.toString());
                    var no2=int.parse(no2con.text.toString());
                    result="Product is ${no1*no2}";
                    setState((){});
                  },child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.multiply),
                    ],
                  ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent
                    ),),
                  ElevatedButton(onPressed: (){
                    var no1=int.parse(no1con.text.toString());
                    var no2=int.parse(no2con.text.toString());
                    result="Quotient is ${(no1/no2).toStringAsFixed(4)}";
                    setState((){});
                  },child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.divide),
                    ],
                  ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent
                    ),),
                ],
              ),
            ),
          Text(result),
          ],
        ),
      ),
    );
  }
}