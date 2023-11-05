import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kodeeo_app/data/model/bootcamp_data.dart';
import 'package:kodeeo_app/widgets/about_our_course.dart';



import '../widgets/drawer.dart';
import 'bootcamp_details.dart';
class BootCamp extends StatelessWidget {

  static List myData = BootcampData.data;
  @override
  Widget build(BuildContext context) {
    var _width= MediaQuery.of(context).size.width;
    var _height= MediaQuery.of(context).size.height;

    return Scaffold(
      appBar:AppBar(
        title: Text("Bootcamp"),
        centerTitle: true,
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: myData.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.only(top:10,bottom: 10,right: 15,left: 15),
            width: MediaQuery.of(context).size.width,
            child: Card(
              surfaceTintColor: Colors.white,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                      fit: BoxFit.fill,
                      repeat: ImageRepeat.noRepeat,
                      width: 600,
                      height: 240,
                      "${myData[index]["image"]}" ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${myData[index]["name"]}" ,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 300,
                            child: Text(
                              "${myData[index]["duration"]}",
                              style: TextStyle(
                                  fontSize: 14),textAlign: TextAlign.center,
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 300,
                            child: RichText(
                              softWrap: true,
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(Icons.offline_pin_outlined, size: 16),
                                        style: TextStyle(decorationColor: Colors.redAccent,decoration: myData[index]["stutas"]=="offline"?TextDecoration.lineThrough:null,decorationThickness: 3,)
                                      ),
                                      TextSpan(
                                        text: " ${myData[index]["stutas"]} ",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16, height: 1),
                                      ),
                                    ],
                                  ),
                                )),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                  text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text: " ৳ ",
                                            style: TextStyle(
                                                fontSize: 22,color: Colors.black
                                            )
                                        ),
                                        TextSpan(
                                          text: "${myData[index]["CoursePrice"]}",
                                          style: TextStyle(
                                              color: myData[index]["discoundPrice"]!=null?Colors.grey:Colors.black,
                                              fontSize: 14, fontWeight: FontWeight.bold,height: 1,decoration: myData[index]["discoundPrice"]!=null?TextDecoration.lineThrough:null),
                                        )
                                      ]
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                      children:myData[index]["discoundPrice"]!=null?[
                                        TextSpan(
                                            text: " ৳",
                                            style: TextStyle(
                                                fontSize: 22,color: Colors.black
                                            )
                                        ),
                                        TextSpan(
                                          text:  " ${myData[index]["discoundPrice"]}",
                                          style: TextStyle(
                                              color:Colors.black,
                                              fontSize: 14, fontWeight: FontWeight.bold,height: 1),
                                        )
                                      ]:null
                                  ),
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            try {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  BootcampDetails(courseId: myData[index]["id"],title: myData[index]["name"],img: myData[index]["image"],discribtuion: myData[index]["details"],)));
                            } catch (e) {
                              print(e);
                            }
                          },
                          child: SizedBox(
                              width: double.infinity,
                              height: 45,
                              child: Text(
                                "Details",
                                style: TextStyle(fontSize: 18, height: 2.4),
                                textAlign: TextAlign.center,
                              )
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
