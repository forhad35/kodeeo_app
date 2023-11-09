import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kodeeo_app/helper/image.dart';

class OurClient extends StatelessWidget {
  OurClient({super.key});

  List<String> imgList = [
    "https://www.kodeeo.com/upload/client/Photo60e19c6a600e01.81568909.jpeg",
    "https://www.kodeeo.com/upload/client/Photo60e1a725878738.76286454.png",
    "https://www.kodeeo.com/upload/client/Photo60e1a5d93628e5.72879792.jpeg",
    "https://www.kodeeo.com/upload/client/Photo60e1a828c5f6b7.04457150.png",
    "https://www.kodeeo.com/upload/client/Photo60e1a46756a493.48544019.png",
    "https://www.kodeeo.com/upload/client/Photo60e1a5d93628e5.72879792.jpeg",
    "https://www.kodeeo.com/upload/client/Photo60e1a7a2988e38.84220513.png",
    "https://www.kodeeo.com/upload/client/Photo60e1a965cb7882.05907130.png",
    "https://www.kodeeo.com/upload/client/Photo60e1a92dc8a374.21353479.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(autoPlay: true, enableInfiniteScroll: true),
        items: imgList
            .map((item) => Container(
          width: 180,
              height: 100,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: imageLoader(imageUrl: item)
                  
                ),
              ),
            ))
            .toList(),
      ),
    );
  }
}
