import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:kodeeo_app/data/model/photos_link.dart';
import 'package:kodeeo_app/pages/bootcamp.dart';
import 'package:kodeeo_app/pages/login.dart';
import 'package:kodeeo_app/pages/notification.dart';
import 'package:kodeeo_app/pages/our_service.dart' as servicePage;
import 'package:kodeeo_app/core/colors.dart';
import 'package:kodeeo_app/pages/profile.dart';

import 'package:kodeeo_app/widgets/Our_service.dart';
import 'package:kodeeo_app/widgets/drawer.dart';
import 'package:kodeeo_app/widgets/our_client.dart';
import '../route/route.dart';
import 'bootcamp_details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {

  var imgList = PhotosLink.imgList;
  @override
  Widget build(BuildContext context) {
    var pages = [Home(),BootCamp(),Profile()];
    var myData = BootCamp.myData;
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Kodeeo"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationPage()));
            },
            icon: Icon(Icons.notifications),
          )
        ],
      ),
      drawer: Drawers(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      enableInfiniteScroll: true
                    ),
                    items: imgList
                        .map((item) => Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                      margin: EdgeInsets.only(left: 10,right: 10),
                      child: Center(
                          child:
                          Image.network(item, fit: BoxFit.cover, width: double.infinity,height: 300,)),
                    ))
                        .toList(),
                  )),
              SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                  //    onPressed: (){},
                      onPressed: () =>Navigator.push(context, MaterialPageRoute(builder: (context)=>OurService.ourService_singlePage())),
                      child: Text(
                        "Our Services",
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.indigo,
                          elevation: 3),
                    ),
                    OutlinedButton(
                      onPressed: () =>Navigator.push(context, MaterialPageRoute(builder: (context)=>BootCamp())),
                      child: Text(
                        "All Bootcamp",
                        style: TextStyle(fontSize: 18),
                      ),
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.indigo),
                          foregroundColor: Colors.indigo,
                          elevation: 2),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                  height: 350,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: myData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) =>  BootcampDetails(title: myData[index]["name"],img: myData[index]["image"],discribtuion: myData[index]["details"],))),
                          child: SizedBox(
                            width: _width * 0.70,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Theme.of(context).colorScheme.outline,
                                  ),
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.network(
                                        fit: BoxFit.fill,
                                        repeat: ImageRepeat.noRepeat,
                                        width: _width * 0.90,
                                        height: 180,
                                        "${myData[index]["image"]}"),
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${myData[index]["name"]}",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Container(
                                              margin: EdgeInsets.only(top: 10),
                                              width: 300,
                                              child: Text(
                                                "${myData[index]["duration"]}",
                                                style: TextStyle(fontSize: 12),
                                                textAlign: TextAlign.center,
                                              )),
                                          Container(
                                              margin: EdgeInsets.only(top: 5),
                                              width: 300,
                                              child: RichText(
                                                softWrap: true,
                                                textAlign: TextAlign.center,
                                                text: TextSpan(
                                                  children: [
                                                    WidgetSpan(
                                                      child: Icon(
                                                          Icons
                                                              .offline_pin_outlined,
                                                          size: 16),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          "${myData[index]["stutas"]} ",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          height: 1),
                                                    ),
                                                  ],
                                                ),
                                              )),
                                          Container(
                                              margin: EdgeInsets.only(top: 10),
                                              width: 300,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "${myData[index]["CoursePrice"]}",
                                                    style: TextStyle(

                                                        fontSize: 14, fontWeight: FontWeight.bold,height: 1,decoration: TextDecoration.lineThrough),textAlign: TextAlign.center,
                                                  ),
                                                  Text(
                                                    "${myData[index]["discoundPrice"]}",

                                                    style: TextStyle(

                                                        fontSize: 14, fontWeight: FontWeight.bold,height: 1),textAlign: TextAlign.center,
                                                  ),
                                                ],
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      })),
             // SvgPicture.asset("images/service5.svg"),
              SizedBox(height: 20,),
              Text("Our Clients",textAlign: TextAlign.right,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              OurClient(),
              // Text("Our Service",textAlign: TextAlign.right,style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
              // OurService.slider(),
    ],
          ),
        ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.golf_course_sharp,
                  text: 'Bootcamp',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                ),

              ],
              selectedIndex: 0,
              onTabChange: (index) {
                setState(() {
                  if(index != 0){
                    if(index == 1){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BootCamp()));
                    }else if(index ==2){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                    }
                  }
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
