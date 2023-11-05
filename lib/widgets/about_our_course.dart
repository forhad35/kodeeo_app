import 'package:flutter/material.dart';
class AboutCourse extends StatelessWidget {
  final String title;
  final String img;
  final String discribtuion;
  const AboutCourse({
    super.key,
    required this.title,
    required this.img,
    required this.discribtuion
  });
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return SingleChildScrollView(
        child: Column(
            children:[
        Container(
        margin: const EdgeInsets.only(top: 20,left: 10),
        child:Text( title,style: const TextStyle(
            height: 1.3,
            fontSize: 18,
            fontWeight: FontWeight.bold
        ))
    ),
              Container(
                margin:EdgeInsets.only(top: height*0.02),
                width: width*0.90,
                child: Image.network(
                    fit: BoxFit.fitWidth,
                    height:height*0.23,
                    img),
              ),

              Container(
                  margin: EdgeInsets.only(top: height*0.02),
                  width: width*0.92,
                  child:Text( discribtuion,textAlign: TextAlign.justify,
                      style: const TextStyle(
                        height: 1.3,
                        fontSize: 14,
                      )
                  )
              ),
            ]
        ),

    );
  }
}
