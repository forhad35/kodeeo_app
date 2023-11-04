import 'package:flutter/material.dart';
import 'package:kodeeo_app/helper/display.dart';
import 'package:kodeeo_app/pages/bootcamp.dart';
import 'package:kodeeo_app/widgets/about_our_course.dart';
import 'package:kodeeo_app/widgets/course_outline.dart';

class BootcampDetails extends StatefulWidget {
  final String title;
  final String img;
  final String discribtuion;
  const BootcampDetails({
    super.key,
    required this.title,
    required this.img,
    required this.discribtuion
  });

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
      appBar: AppBar(
        title: Text("Details"),
      ),
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
            Container(
              height: displayHeight(context)-200,
              child: TabBarView(
                controller: tabController,
                children: [
                  AboutCourse(title: widget.title, img: widget.img, discribtuion: widget.discribtuion),
                  CourseOutline(),
                  AboutCourse(title: widget.title, img: widget.img, discribtuion: widget.discribtuion),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
