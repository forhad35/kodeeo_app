
import 'package:flutter/material.dart';

void alertbox(BuildContext context,String title, String message){
  showDialog(context: context, builder: (BuildContext context)=>
      AlertDialog(
        title: Text(title,style: TextStyle(color: Colors.grey),),
        content: Text(message,style: TextStyle(color: Colors.redAccent),),
        actions: [
          OutlinedButton(onPressed: (){Navigator.pop(context);}, child: Text("OK"))
        ],
      ));
}