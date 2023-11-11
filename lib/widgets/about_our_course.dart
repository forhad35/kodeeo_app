import 'package:flutter/material.dart';
import 'package:kodeeo_app/helper/display.dart';
import 'package:kodeeo_app/helper/image.dart';
import 'package:kodeeo_app/pages/login.dart';

import '../helper/shared_value_helper.dart';
class AboutCourse extends StatelessWidget {
  final String title;
  final String img;
  final String discribtuion;
  final int courseId;
  const AboutCourse({
    super.key,
    required this.title,
    required this.img,
    required this.discribtuion,
    required this.courseId

  });
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          height: (displayHeight(context)/1.23)*0.10,
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(onPressed: (){
                showDialog(context: context,
                    builder: (contex){
              return  AlertDialog(
                    title: Text("This page is under maintenance",style: TextStyle(fontSize: 14),),
                actions: [
                  TextButton(onPressed:()=> Navigator.pop(context),
                      child: Text("Okey"))
                ],
                  );

                });
              }, icon: Icon(Icons.download_sharp,size: 14,color: Colors.white,),
                label: Text("Course Outline",style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    ),
                    backgroundColor: Colors.orangeAccent
                ),),
              ElevatedButton(onPressed: (){
                if(is_log_in.$){
                  showDialog(context: context,
                      builder: (context){
                    return const AlertDialog(
                      alignment: Alignment.centerLeft,
                      icon: Icon(Icons.done ,color: Colors.white,size: 25,) ,
                      backgroundColor: Colors.green,
                      content: Text("You have successfully enrolled.You will receive a confirmation SMS",style: TextStyle(color: Colors.white),),

                    );
                      }
                  );

                }else{
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login(courseId: courseId,)));
                }


              },
                child: Text("Enroll Now",style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    ),
                    backgroundColor: Colors.orangeAccent
                ),)
            ],
          ),
        ),
        Container(
          height: (displayHeight(context)/1.23)*0.90,
          width: displayWidth(context)*0.92,

          child: SingleChildScrollView(
              child: Container(
                child: Column(
                    children:[
                      Container(
                margin: const EdgeInsets.only(top: 5,),
                child:Text( title,style: const TextStyle(
                    height: 1.3,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ))
          ),
                      Container(
                        margin:EdgeInsets.only(top: 20),
                        width: displayWidth(context)*0.90,
                        height:displayHeight(context)*0.20,
                        child: imageLoader(imageUrl: img,fit: BoxFit.fitWidth)
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          child:Text( discribtuion,textAlign: TextAlign.justify,
                              style: const TextStyle(
                                height: 1.3,
                                fontSize: 14,
                              )
                          )
                      ),
                    ]
                ),
              ),

          ),
        ),
      ],
    );
  }
}
