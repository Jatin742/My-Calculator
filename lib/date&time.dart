import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class datetime extends StatelessWidget{
  var time=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()  async {
              DateTime? datepick=await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate:DateTime(2000),
                  lastDate: DateTime(2050));
              if(datepick!=null){
                print('Date Selected: ${datepick.month}');
              }
            }, child: Text('Show')
            ),

            ElevatedButton(onPressed: () async{
              TimeOfDay? datepick1=await showTimePicker(
                  context: context,
              initialTime: TimeOfDay.now(),
              initialEntryMode: TimePickerEntryMode.input);
              if(datepick1!=null){
                print('Date Selected: ${datepick1.hour}/${datepick1.minute}');
              }
            }, child: Text('Show Time'))
          ],
        ),
    );
  }
}