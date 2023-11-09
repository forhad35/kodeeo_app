import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget imageLoader(
    {required String imageUrl,
      BoxFit fit = BoxFit.fill,
      double width = double.infinity,
      double? height,
     String? errorImage
    }
    ){
  return  CachedNetworkImage(
    imageUrl: "$imageUrl",
    placeholder: (context, url) =>Center(
      child: Image.asset("images/loading.gif",width: 20,)
    ),
    errorWidget: (context, url, error) =>errorImage==null?Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("images/wifi-slash.png",width: 20,) ,
        const Text(" Unable to load"),
      ]):Image.asset(errorImage,),
    fit: fit,
    width: width,
    height: height,
  );
}