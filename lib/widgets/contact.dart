import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kodeeo_app/data/model/contact_data.dart';

import '../helper/image.dart';

class Contact {
  static Widget contactCard(List list) {
    return Container(
      padding: EdgeInsets.all(5),
      width: 250,
      height: 180,
      child: Card(
        elevation: 2,
        color: Colors.white70,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
              children: [
                SizedBox(height: 5,),
                imageLoader(imageUrl:list[0], width: 50, height: 50,),
                Text(list[1],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text(list[2]),
              ]
          ),
        ),),
    );
  }

  static Widget contactNoCard(List list) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 180,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
            children: [
              SizedBox(height: 5,),
              Image.network(list[0], width: 50, height: 50,),
              Text(list[1],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
              Text(list[2]),
            ]
        ),
      ),
    );
  }

  static contactSlider(BuildContext context) {
    var itemList = ContactData.contactSliderData();
    return Container(
      height: 250,
      width: MediaQuery
          .of(context)
          .size
          .width,
      color: Colors.cyan,
      child: CarouselSlider(
        options: CarouselOptions(autoPlay: true, enableInfiniteScroll: true),
        items: itemList
            .map((item) =>
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               imageLoader(
                 imageUrl:item.image,
                  width: 150, height: 150,
                ),
                Text(item.title, textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
              ],
            ))
            .toList(),
      ),
    );
  }

}