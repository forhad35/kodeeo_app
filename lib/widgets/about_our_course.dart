import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kodeeo_app/helper/display.dart';
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

    return Column(
      children: [
        Container(
          height: (displayHeight(context)/1.23)*0.10,
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(onPressed: (){
              }, icon: Icon(Icons.download_sharp,size: 14,color: Colors.white,),
                label: Text("Course Outline",style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    ),
                    backgroundColor: Colors.orangeAccent
                ),),
              ElevatedButton(onPressed: (){
                print(AppBar().preferredSize.height);
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
                        child: Image.network(
                            fit: BoxFit.fitWidth,
                            img),
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
