import 'package:flutter/material.dart';
import 'package:kodeeo_app/data/model/photos_link.dart';
import 'package:kodeeo_app/pages/home.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PhotoGallery extends StatelessWidget {
   PhotoGallery({super.key});
 var imgLink = PhotosLink.imgList;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children:  [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Image.network(PhotosLink.imgList[0],fit: BoxFit.cover,),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Image.network(PhotosLink.imgList[1],fit: BoxFit.cover,),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 3,
              child: Image.network(PhotosLink.imgList[2],fit: BoxFit.cover,),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Image.network(PhotosLink.imgList[3],fit: BoxFit.cover,),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Image.network(PhotosLink.imgList[4],fit: BoxFit.cover,),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 3,
              child: Image.network(PhotosLink.imgList[5],fit: BoxFit.cover,),
            ),
          ],
        ),
      ),
    );
  }


}
