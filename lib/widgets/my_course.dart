import 'package:flutter/material.dart';
import 'package:kodeeo_app/helper/display.dart';

class MyCourse extends StatefulWidget {
  const MyCourse({super.key});

  @override
  State<MyCourse> createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> {
  static var courseTitle =[
    "Instructor Name","Course Name","Course Price", "Dui Amount","Paid Status","Certificate Status"
  ];
  @override
  Widget build(BuildContext context) {
                                                                                                                                 // ========================== // Course  info  builder=================================

    return  ListView.builder(
      itemCount: 1,
        itemBuilder: (BuildContext context, int index){
      return Card(
       child: Column(
         children: [
           Container(
             height: displayHeight(context)*0.25,
              padding: EdgeInsets.all(10),
              width: displayWidth(context),
              child: ListView.builder(                            // ========================== // Course  info item builder=================================
              itemCount: courseTitle.length,
                  itemBuilder: (BuildContext item_context, int  item_index){
                return Container(
                  margin: EdgeInsets.only(top: 5,bottom: 5),
                  child: RichText(
                    textAlign: TextAlign.start,
                    text:  TextSpan(
                      children: [
                        TextSpan(
                            text: " ${courseTitle[item_index]}  : "
                        ),
                        TextSpan(
                            text: "Mustafizur Rahman "
                        )

                      ],
                      style: TextStyle(
                          color: Color(0xFF333664),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),),
                );
              }),
            ),
           Container(
             margin: EdgeInsets.only(bottom: 10),
             child: OutlinedButton(onPressed: (){},
                 child: Text("Claim Certificate")
             ),
           )
         ],
       ),

      );
    });
  }
}
