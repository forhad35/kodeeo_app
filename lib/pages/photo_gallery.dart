import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kodeeo_app/data/model/photos_link.dart';
import 'package:kodeeo_app/pages/home.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:photo_view/photo_view.dart';

class PhotoGallery extends StatelessWidget {
   PhotoGallery({super.key});
 var imgLink = PhotosLink.imgList;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Photo Gallery"),),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children:  [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: loadimg(PhotosLink.imgList[0]),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: loadimg(PhotosLink.imgList[1]),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 2,
              child: loadimg(PhotosLink.imgList[2]),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 2,
              child: loadimg(PhotosLink.imgList[3]),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: loadimg(PhotosLink.imgList[4]),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: loadimg(PhotosLink.imgList[5]),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 2,
              child: loadimg(PhotosLink.imgList[0]),
            ),

          ],
        ),
      ),
    );
  }
  // image load function
Widget loadimg(String PhotosLink){
  return  Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      clipBehavior: Clip.hardEdge,
      decoration:  BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          strokeAlign: BorderSide.strokeAlignOutside,
          width: 1,
        ),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
        child: Image.network(PhotosLink,fit: BoxFit.cover,isAntiAlias: true,)),
  );
}
//testing zoomable image
  Widget FullScreenWidget(){
   return ClipRRect(
   borderRadius: BorderRadius.circular(16),
   child: loadimg(PhotosLink.imgList[0]),
   );}

}
