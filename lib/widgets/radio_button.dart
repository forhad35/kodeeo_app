import 'package:flutter/material.dart';
class RadioButton extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}
class _BodyState extends State<RadioButton> {
  bool evaluate = true;
  late String device = "desktop";
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          RadioListTile(
            isThreeLine: evaluate,
            title: Text("Laptop"),
            value: "laptop",
            groupValue: device,
            onChanged: (value){
              setState(() {
                device = value.toString();
              });
            },
          ),
          RadioListTile(
            isThreeLine: evaluate,
            title: Text("Desktop"),
            value: "desktop",
            groupValue: device,
            onChanged: (value){
              setState(() {
                device = value.toString();
              });
            },
          ),
          RadioListTile(
            isThreeLine: evaluate,
            title: Text("I Don't have"),
            value: "i_don't_have",
            groupValue: device,
            onChanged: (value){
              setState(() {
                device = value.toString();
              });
            },
          ),
          Text(device),
        ],
    );

  }
}