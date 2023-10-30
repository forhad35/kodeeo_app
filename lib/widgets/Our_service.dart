
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kodeeo_app/data/model/ServiceModel.dart';
class OurService  {
  // OurService({super.key});
  static var itemList= ServiceDataList().getData();


  static Widget slider() {
    return  Container(
      child: CarouselSlider(
        options: CarouselOptions(autoPlay: true, enableInfiniteScroll: true),
        items: itemList
            .map((item) => Container(
              width: 150,
              height: 100,
              child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      item.imageUrl,fit: BoxFit.fill,
                      width: 1000,
                    ),
                  ),
              ),
            ))
            .toList(),
      ),
    );
  }

  static Widget ourService_singlePage(){
    return Scaffold(
      appBar: AppBar(title: Text("Our Service"),centerTitle: true,),
      body: ListView.builder(
        itemCount: itemList.length,
          itemBuilder: (BuildContext context ,int index){
        return Container(
          padding: EdgeInsets.all(5),
          width: 200,
          height: 250,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
            children:[
              SizedBox(height: 5,),
              Image.network(itemList[index].imageUrl,width: 100,height: 70,),
              Text(itemList[index].title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
              Text(itemList[index].descption),
              Divider()

            ]
          ),
          ),
        );
      }),
    );
  }
}
