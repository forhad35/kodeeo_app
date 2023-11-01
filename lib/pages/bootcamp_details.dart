import 'package:flutter/material.dart';
class BootcampDetails extends StatelessWidget {
  final String title;
  final String img;
  final String discribtuion;
  const BootcampDetails({
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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios),

        ),

        title: const Text("Details"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
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
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    )),

              ),
              Container(
                margin:EdgeInsets.only(top: height*0.02),
                width: width*0.88,
                child: Image.network(
                    width: width*0.80,
                    height:height*0.40,
                    img),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 20,left: 10),
                  child:Text( title,style: const TextStyle(
                      height: 1.3,
                      fontSize: 24,
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
                        fontSize: 18,
                      )
                  )
              ),
            ]
        ),
      )
      ,
    );
  }
}