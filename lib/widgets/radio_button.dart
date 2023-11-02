import 'package:flutter/material.dart';
import 'package:kodeeo_app/helper/display.dart';
class RadioButton extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}
class _BodyState extends State<RadioButton> {
  late String device = "desktop";
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(

          children: [
            Container(
              width: displayWidth(context)/3.8,
              child: Transform.translate(offset:Offset(8, 0),
                child: RadioListTile(
                  contentPadding: EdgeInsets.all(1),
                  title: Transform.translate(offset:Offset(-10, 0),child: Text("Laptop",style: TextStyle(fontSize: 12),)),
                  value: "laptop",
                  groupValue: device,
                  onChanged: (value){
                    setState(() {
                      device = value.toString();
                    });
                  },
                ),
              ),
            ),


            Container(
              width: displayWidth(context)/3.7,
              child: Transform.translate(offset:Offset(5, 0),
                child: RadioListTile(
            contentPadding: EdgeInsets.all(1),
                  title: Transform.translate(offset:Offset(-10, 0),
                  child: Text("Desktop",style: TextStyle(fontSize: 12),)),
                  value: "desktop",
                  groupValue: device,
                  onChanged: (value){
                    setState(() {
                      device = value.toString();
                    });
                  },
                ),
              ),
            ),
            Container(
              width: displayWidth(context)/3,
              child: Transform.translate(offset:Offset(10, 0),
                child: RadioListTile(
                  contentPadding: EdgeInsets.all(1),
                  title: Transform.translate(offset:Offset(-10, 0),
                      child: Text("I Don't have",style: TextStyle(fontSize: 12),)),
                  value: "i_don't_have",
                  groupValue: device,
                  onChanged: (value){
                    setState(() {
                      device = value.toString();
                    });
                  },
                ),
              ),
            ),
          ],
      ),
    );

  }
}