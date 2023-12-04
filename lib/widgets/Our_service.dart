
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kodeeo_app/data/model/ServiceModel.dart';
import 'package:kodeeo_app/helper/image.dart';
class OurService  {
  static var itemList= ServiceDataList().getData();

  // static Widget slider() {
  //   return  Container(
  //     child: CarouselSlider(
  //       options: CarouselOptions(autoPlay: true, enableInfiniteScroll: true),
  //       items: itemList
  //           .map((item) => Container(
  //             width: 150,
  //             height: 100,
  //             child: Center(
  //                 child: Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: imageLoader(imageUrl: item.imageUrl,fit: BoxFit.fitWidth)
  //                 ),
  //             ),
  //           ))
  //           .toList(),
  //     ),
  //   );
  // }

  static Widget ourService_singlePage(){
    return Scaffold(
      appBar: AppBar(title: Text("Our Service"),centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(6.35),
        child: Container(
          child: GridView.count(
            childAspectRatio: (300/350),
              crossAxisCount: 2,
              children: List.generate(
                  itemList.length, (index) {
            return Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2.0
                  )
                ]
              ),
              margin: EdgeInsets.all(5),
              padding:EdgeInsets.all(7) ,
              child: Column(
              children:[
                SizedBox(height: 5,),
                imageLoader(imageUrl:itemList[index].imageUrl,width: 50,height: 30,fit: BoxFit.fitHeight),
                SizedBox(height: 5,),
                Text(itemList[index].title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                SizedBox(height: 5,),
                Expanded(child: Text(itemList[index].descption,style: TextStyle(fontSize: 12),textAlign: TextAlign.justify,)),

              ]
              ),
            );
          })
          ),
        ),
      ),
    );
  }
}
