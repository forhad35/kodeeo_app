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
                // margin:EdgeInsets.only(top: _height*0.02,left: 10),
                padding: const EdgeInsets.all(10),
                width: width,
                child: const Text("About the course",
                    textAlign: TextAlign.start,
                    style: TextStyle(

                        height: 1.3,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    )),

              ),
              Container(
                margin:EdgeInsets.only(top: height*0.02),
                width: width*0.90,
                child: Image.network(
                    fit: BoxFit.fill,
                    width: width*0.90,
                    height:height*0.20,
                    img),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 20,left: 10),
                  child:Text( title,style: const TextStyle(
                      height: 1.3,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ))
              )
              ,
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
