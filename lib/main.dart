import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertut/richtext.dart';
import 'package:fluttertut/sizebox.dart';
import 'package:fluttertut/stack.dart';
import 'package:fluttertut/textedit.dart';
import 'package:fluttertut/warp.dart';
import 'package:fluttertut/widgets/custom.dart';
import 'package:intl/intl.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _MyHomePage();
}

class _MyHomePage extends State<MyHomePage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page',)),
    body: textedit(),
    );
  }
}