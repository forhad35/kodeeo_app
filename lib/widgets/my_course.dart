import 'package:flutter/material.dart';
import 'package:kodeeo_app/helper/display.dart';

class MyCourse extends StatefulWidget {
  const MyCourse({super.key});

  @override
  State<MyCourse> createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> {
  @override
  Widget build(BuildContext context) {
    // ========================== // Course  info  builder=================================

    return  ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index){
          return Card(
            child: Container(
                height: displayHeight(context)*0.4,
                padding: EdgeInsets.all(10),
                width: displayWidth(context),
                // ========================== // Course  info item builder=================================
                child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (BuildContext item_context, int  item_index){
                      return Container(
                        margin: EdgeInsets.only(top: 5,bottom: 5),
                        child: RichText(
                          textAlign: TextAlign.start,
                          text:  TextSpan(
                            children: [
                              TextSpan(
                                  text: " Instructor Name  : "
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
                    })

            ),
          );
        });
  }
}
