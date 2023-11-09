import 'package:flutter/material.dart';
import 'package:kodeeo_app/data/model/bootcamp_data.dart';
import 'package:kodeeo_app/helper/display.dart';
import 'package:kodeeo_app/helper/image.dart';


class MyCourse extends StatefulWidget {
  const MyCourse({super.key});

  @override
  State<MyCourse> createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> {

  var myData = BootcampData.data;
  bool claimCertificate = false;

  @override
  Widget build(BuildContext context) {
    // ========================== // Course  info  builder=================================

    return Container(
      child: ListView.builder(
        padding: EdgeInsets.only(bottom: 30),
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              clipBehavior: Clip.hardEdge,
              elevation: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: displayWidth(context) * 0.90,
                    height: 180,
                    child: imageLoader(imageUrl: myData[index]["image"])
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "${myData[index]["name"]}",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 300,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Course  Price",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "Due Price",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "Paid Status",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),

                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                  Container(
                                    padding:EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color:Color(0x7c27ba3e),
                                    ),
                                    child: Text(
                                      "${myData[index]["CoursePrice"]}",

                                      style: TextStyle(
                                          fontSize: 12,
                                          height: 1,
                                          color:Color(0xff1c5324),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color:Color(0xFFfee2e2),
                                  ),
                                  padding:EdgeInsets.all(10),
                                child:    Text(
                                    "${myData[index]["discoundPrice"]}",
                                    style: TextStyle(
                                        fontSize: 12,
                                        height: 1,
                                        color:Color(0xFF991b1b),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          color:Color(0x7ce3bc0d),
                                        ),
                                        padding:EdgeInsets.all(10),
                                        child:    Text(
                                          "Admission",
                                          style: TextStyle(
                                              fontSize: 12,
                                              height: 1,
                                              color:Color(0xff5b5b0c),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                ])
                              ],
                            )),
                        Container(
                          margin: EdgeInsets.only(bottom: 7,top: 15),
                          child: OutlinedButton.icon(
                            icon: Icon(Icons.done_outline,color: claimCertificate?Colors.indigo:Colors.transparent,),
                              onPressed: () {
                              setState(() {
                                claimCertificate = true;
                              });
                               alertBox("7000");
                              }, label: Text("Claim Certificate")),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
  void alertBox(String DuePrice){
    showDialog(context: context,
        builder: (BuildContext context)=>AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Claim Certificate",),
              Text("Due : 70000 TK"),
            ],
          ),
          titleTextStyle: TextStyle(
              fontSize: 14,
              color: Colors.black
          ),
          content: Text("You need to clear your due for claiming your certificate"),
          contentPadding: EdgeInsets.all(20),
          contentTextStyle: TextStyle(
              fontSize: 12,
              color: Colors.red),
        ));
  }
}
