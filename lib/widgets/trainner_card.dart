import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kodeeo_app/data/model/trainner_data.dart';
import 'package:kodeeo_app/helper/display.dart';
import 'package:kodeeo_app/helper/image.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;


class TrainnerCard extends StatelessWidget {
   final int trainnerId;
  const TrainnerCard({super.key,required this.trainnerId});
  @override
  Widget build(BuildContext context) {
    TrainnerModel? trainnerData=TrainnerData.trainnerId()[trainnerId];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
        child: Card(
          color: Colors.white,
          child: SizedBox(
           // color: Colors.white,
            width: displayWidth(context),
            height: displayHeight(context)*0.80,
            child: Column(
              children: [
                SizedBox(
                  height: 230,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: 0,
                        bottom: 50,
                        left: 0,
                        right: 0,
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xFFEEEFFF),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: Stack(
                            children: [
                              Positioned(
                                  right: 60,
                                  top: -37,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFDCDEFF),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(150),
                                            bottomLeft: Radius.circular(150))),
                                    width: 100,
                                    height: 70,
                                  )),
                              Positioned(
                                  left: -60,
                                  bottom: -100,
                                  child: Transform.rotate(
                                    angle: 2,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          color: Color(0xFFDCDEFF),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(150))),
                                      width: 205,
                                      height: 220,
                                    ),
                                  )),
                              Positioned(
                                  right: 0,
                                  bottom: -40,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFDCDEFF),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(150),
                                            topLeft: Radius.circular(150))),
                                    width: 150,
                                    height: 70,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          // top: 130,
                          left: (displayWidth(context) - 185) / 2,
                          bottom: 0,
                          child: Container(
                            width: 150,
                            height: 150,
                            clipBehavior: Clip.hardEdge,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color:const Color(0x2DDCDEFF),
                                border:
                                    Border.all(color: Colors.white, width: 1.5),
                                borderRadius:
                                   const BorderRadius.all(Radius.circular(150))),
                            child: Container(
                                width: 60,
                                height: 60,
                                clipBehavior: Clip.hardEdge,
                                decoration:const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
                                child: imageLoader(imageUrl: trainnerData!.image,errorImage: "images/profile.png")),
                          )),
                    ],
                  ),
                ),
               const SizedBox(height: 40,),
                Column(
                  children: [
                    Text(
                      trainnerData.name,
                      textAlign: TextAlign.center,
                      style:const TextStyle(
                          color: Colors.black54,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      trainnerData.job,
                      textAlign: TextAlign.center,
                      style:const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      " Skills : ${trainnerData.skills}",
                      textAlign: TextAlign.center,
                      style:const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,height: 1.5),
                    ),
                    Text(
                      "Work Experience: ${trainnerData.experience}",
                      textAlign: TextAlign.center,
                      style:const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,height: 1.5),
                    ),
                    Text(
                      "Email: ${trainnerData.email}",
                      textAlign: TextAlign.center,
                      style:const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,height: 1.5),
                    ),
                    Container(
                      margin:const EdgeInsets.only(top: 20),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon:const FaIcon(FontAwesomeIcons.facebook),color: Colors.blue,
                              onPressed: (){
                                launcher.launchUrl(Uri.parse("https://www.facebook.com/Kodeeo/"));
                              },
                            ),
                            IconButton(
                              icon:const FaIcon(FontAwesomeIcons.twitter),color: Colors.blue,
                              onPressed: (){
                                launcher.launchUrl(Uri.parse("https://twitter.com/KodeeoCom"));

                              },
                            ),
                            IconButton(
                              icon:const FaIcon(FontAwesomeIcons.linkedin),color: Colors.blue,
                              onPressed: (){
                                launcher.launchUrl(Uri.parse("https://www.linkedin.com/company/kodeeo/"));

                              },
                            ),

                          ],),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
