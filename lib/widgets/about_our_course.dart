import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(onPressed: (){
                      print(MediaQuery.of(context).padding.top + kToolbarHeight);
                    }, icon: Icon(Icons.download_sharp,size: 14,color: Colors.orangeAccent,),
                        label: Text("Course Outline",style: TextStyle(color: Colors.orangeAccent),)),
                    TextButton(onPressed: (){
                      print(AppBar().preferredSize.height);
                    }, child: Text("Enroll Now",style: TextStyle(color: Colors.orangeAccent),),)
                  ],
                ),
              ),
        Container(
        margin: const EdgeInsets.only(top: 5,left: 5,right: 5),
        child:Text( title,style: const TextStyle(
            height: 1.3,
            fontSize: 18,
            fontWeight: FontWeight.bold
        ))
    ),
              Container(
                margin:EdgeInsets.only(top: height*0.02),
                width: width*0.90,
                height:height*0.23,
                child: Image.network(
                    fit: BoxFit.fitWidth,
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
