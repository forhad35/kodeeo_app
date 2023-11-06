import 'package:flutter/material.dart';
import 'package:kodeeo_app/data/model/bootcamp_data.dart';
import 'package:kodeeo_app/helper/display.dart';
import 'package:kodeeo_app/widgets/about_our_course.dart';
import 'package:kodeeo_app/widgets/trainner_card.dart';

class BootcampDetails extends StatefulWidget {
  final int courseId;
  final String title;
  final String img;
  final String discribtuion;
  final double appbarHeight=80;
  final double tabbarHeight=50;
  const BootcampDetails({
    super.key,
    required this.courseId,
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
      tabController= TabController(length: 2, vsync: this);
      tabController.animateTo(0);
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       title: Text("Bootcamp Info"),centerTitle: true,
      ),

      body:
      Container(
        child: Column(
          children: [
            Container(
              height: widget.tabbarHeight,
              color: Colors.redAccent,
              child: TabBar(
                controller: tabController,
                  tabs: [
                    Tab(
                      text: "About Course",

                    ),
                    Tab(
                      text: "Course Instructor",

                    ),

                  ]
              ),
            ),
            Container(
              height: displayHeight(context)-(widget.appbarHeight+widget.tabbarHeight),
              child: TabBarView(
                controller: tabController,
                children: [
                  AboutCourse(title: widget.title, img: widget.img, discribtuion: widget.discribtuion),
                  TrainnerCard(trainnerId: BootcampData.getTrainnerId(widget.courseId)!,),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
