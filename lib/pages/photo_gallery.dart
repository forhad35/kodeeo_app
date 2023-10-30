import 'package:flutter/material.dart';
import 'package:kodeeo_app/data/model/photos_link.dart';
import 'package:kodeeo_app/pages/home.dart';

class PhotoGallery extends StatelessWidget {
   PhotoGallery({super.key});
 var imgLink = PhotosLink.imgList;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Container(
        child:
        Column(
          children: [
            Container(
              child:
              Row(
                children: [
                  Image.network(imgLink[0],height: 200,width: 200,)
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
