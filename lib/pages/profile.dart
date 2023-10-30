import 'package:flutter/material.dart';
import 'package:kodeeo_app/core/colors.dart';
import 'dart:math' as math;

import 'package:kodeeo_app/helper/display.dart';

class Profile extends StatelessWidget {
  String imgLink =
      "https://imgv3.fotor.com/images/gallery/Realistic-Male-Profile-Picture.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 40, left: 25, right: 25),
          child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
          Container(
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
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color(0xFFEEEFFF),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Stack(
                      children: [
                        Positioned(
                            right: 60,
                            top: -37,
                            child: Container(
                              decoration: BoxDecoration(
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
                                decoration: BoxDecoration(
                                    color: Color(0xFFDCDEFF),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(150))),
                                width: 205,
                                height: 220,
                              ),
                            )),
                        Positioned(
                            right: 0,
                            bottom: -40,
                            child: Container(
                              decoration: BoxDecoration(
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
                    left: 110,
                    bottom: 0,
                    child: Container(
                      width: 140,
                      height: 140,
                      clipBehavior: Clip.hardEdge,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Color(0x2DDCDEFF),
                          border: Border.all(color: Colors.white, width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(150))),
                      child: Container(
                          width: 50,
                          height: 50,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(150))),
                          child: Image.network(imgLink)),
                    )),
                Positioned(
                  top: 20,
                    left: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(60))

                      ),
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                )),
                Positioned(
                    top: 30,
                    left: displayWidth(context)*0.36,
                    child: Text("Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color:Color(0xFF333664), ),),
                ),
                Positioned(
                    top: 20,
                    right: 20,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(60))

                      ),
                      child: IconButton(
                        onPressed: ()  {

                          showDialog(
                            context: context,
                            builder: (context) =>
                                AlertDialog(
                                  title: const Text("Profile Info"),
                                  content: const Text("This container is under maintenance"),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text("okay"),
                                    ),
                                  ],
                                ),
                          );
                        },
                        icon: Icon(Icons.dashboard),
                      ),
                    )),
              ],
            ),
          ),
          Container(
            child: Text(
              "Angelica Melli",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF333664),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
      ],
    ),
        ));
  }
}
