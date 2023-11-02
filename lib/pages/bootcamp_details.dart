import 'package:flutter/material.dart';
import 'package:kodeeo_app/pages/bootcamp.dart';
import 'package:kodeeo_app/widgets/about_our_course.dart';

class BootcampDetails extends StatefulWidget {
  const BootcampDetails({super.key});

  @override
  State<BootcampDetails> createState() => _BootcampDetailsState();
}

class _BootcampDetailsState extends State<BootcampDetails> with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      tabController= TabController(length: 3, vsync: this);
      tabController.animateTo(0);
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      Container(
        child: Column(
          children: [
            Container(
              child: TabBar(
                controller: tabController,
                  tabs: [
                    Tab(
                      text: "About Course",

                    ),
                    Tab(
                      text: "Course Outline",

                    ),
                    Tab(
                      text: "Course Trainer",

                    ),

                  ]
              ),
            ),
            // Container(
            //   child: TabBarView(
            //     controller: tabController,
            //     children: [
            //       AboutCourse(title: "title", img: "img", discribtuion: "discribtuion"),
            //       AboutCourse(title: "title", img: "img", discribtuion: "discribtuion"),
            //       AboutCourse(title: "title", img: "img", discribtuion: "discribtuion"),
            //
            //     ],
            //   ),
            //
            // ),
          ],
        ),
      ),
    );
  }
}
