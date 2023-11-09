import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

Widget imageLoader(
    {required String imageUrl,
      BoxFit fit = BoxFit.fill,
      double width = double.infinity,
      double? height,
     String errorImage = "images/error.gif"
    }
    ){
  return  CachedNetworkImage(
    imageUrl: "$imageUrl",
    placeholder: (context, url) =>Image.asset("images/loading.gif",), //CircularProgressIndicator(),
    errorWidget: (context, url, error) => Image.asset(errorImage),
    fit: fit,
    width: width,
    height: height,
  );
}