import 'package:flutter/material.dart';
import 'package:kodeeo_app/data/model/bootcamp_data.dart';
import 'package:kodeeo_app/helper/display.dart';
import 'bootcamp_details.dart';
class BootCamp extends StatelessWidget {
  static List myData = BootcampData.data;

  const BootCamp({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        title: const Text("Bootcamp"),
        centerTitle: true,
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: myData.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.only(top:10,bottom: 10,right: 15,left: 15),
            width: MediaQuery.of(context).size.width,
            child: Card(
              surfaceTintColor: Colors.white,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 2,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 600,
                    height: 240,
                    child: Image.network(
                        fit: BoxFit.fill,
                        "${myData[index]["image"]}" ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${myData[index]["name"]}" ,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 10),
                            width: 300,
                            child: Text(
                              "${myData[index]["duration"]}",
                              style: const TextStyle(
                                  fontSize: 14),textAlign: TextAlign.center,
                            )),
                        SizedBox (
                          width: 300,
                         child:   RichText(
                              softWrap: true,
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: displayWidth(context)<347? [
                                  WidgetSpan(
                                      child: const Icon(Icons.online_prediction_outlined,color: Colors.red,size: 25,),
                                      style: TextStyle(fontSize: 24,decorationColor: Colors.redAccent,decoration: myData[index]["stutas"]=="offline"?TextDecoration.lineThrough:null,decorationThickness: 1.5,)
                                  ),
                                  TextSpan(
                                    text: " ${myData[index]["stutas"]} ",
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 16, height: 1),
                                  ),
                                ]:null,

                              ),
                            ),
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 10),
                            width: 300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              RichText(
                              softWrap: true,
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: displayWidth(context)>347? [
                                WidgetSpan(
                                    child: const Icon(Icons.online_prediction_outlined,color: Colors.red,size: 25,),
                                    style: TextStyle(fontSize: 24,decorationColor: Colors.redAccent,decoration: myData[index]["stutas"]=="offline"?TextDecoration.lineThrough:null,decorationThickness: 1.5,)
                                ),
                                TextSpan(
                                  text: " ${myData[index]["stutas"]} ",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16, height: 1),
                                ),
                                ]:null,

                              ),
                            ),
                                RichText(
                                  text: TextSpan(
                                      children: [
                                        const TextSpan(
                                            text: " ৳ ",
                                            style: TextStyle(
                                                fontSize: 20,color: Colors.black
                                            )
                                        ),
                                        TextSpan(
                                          text: "${myData[index]["CoursePrice"]}",
                                          style: TextStyle(
                                              color: myData[index]["discoundPrice"]!=null?Colors.grey:Colors.black,
                                              fontSize: 14, fontWeight: FontWeight.bold,height: 1,decoration: myData[index]["discoundPrice"]!=null?TextDecoration.lineThrough:null,decorationThickness: 3,decorationColor: Colors.black),
                                        )
                                      ]
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                      children:myData[index]["discoundPrice"]!=null?[
                                        const TextSpan(
                                            text: " ৳",
                                            style: TextStyle(
                                                fontSize: 20,color: Colors.black
                                            )
                                        ),
                                        TextSpan(
                                          text:  " ${myData[index]["discoundPrice"]}",
                                          style: const TextStyle(
                                              color:Colors.black,
                                              fontSize: 14, fontWeight: FontWeight.bold,height: 1),
                                        )
                                      ]:null
                                  ),
                                ),
                              ],
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  BootcampDetails(title: myData[index]["name"],img: myData[index]["image"],discribtuion: myData[index]["details"], courseId: myData[index]["id"],)));

                          },
                          child: const SizedBox(
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
