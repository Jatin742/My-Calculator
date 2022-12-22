import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class custom extends StatelessWidget{
  final String btn;
  final Icon? icon;
  final TextStyle? textStyle;
  final Color? bgc;
  final VoidCallback? cb;

  custom({required this.btn,
    this.icon,
    this.bgc=Colors.blue,
    this.textStyle,
    this.cb});

  @override
  Widget build(BuildContext context) {
    //       body:Center(
//         child: Container(
//           width: 150,
//           height: 50,
//           child: custom(btn: "Login", icon: Icon(Icons.lock),
//           cb: (){
//     print("Logged in!!");
//           },
//             bgc: Colors.orange,
//             textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),
//   ),
//         ),
//       ),
    return Center(
      child: Container(
        width: 150,
        child: ElevatedButton(onPressed: (){
          cb!();
        }, child: icon!=null? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon!,
            Container(
              width: 11,
            ),
            Text(btn, style: textStyle,)
          ],
        )
            :Text(btn,
          style: textStyle,
        ),
          style: ElevatedButton.styleFrom(
            backgroundColor: bgc,
            shadowColor: bgc,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight:Radius.circular(21),
                bottomLeft: Radius.circular(21)
              )
            )
          ),
        ),
      ),
    );
  }
}