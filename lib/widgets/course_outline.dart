import 'package:flutter/material.dart';
import 'package:kodeeo_app/data/model/couse_ol_data.dart';

class CourseOutline extends StatefulWidget {
  const CourseOutline({super.key});

  @override
  State<CourseOutline> createState() => _CourseOutlineState();
}

class _CourseOutlineState extends State<CourseOutline> {
  var item=CourseOlData().outLineData;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar( title:  Text("Course Outline"),),
      body: Container(
        child:
        ListView.builder(
          itemCount: item.length,
            itemBuilder: (itemBuilder,index){

          return ListTile(

          );
        }),
      ),
    );
  }
}
