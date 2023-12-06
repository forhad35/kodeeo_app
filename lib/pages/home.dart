import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:kodeeo_app/data/model/photos_link.dart';
import 'package:kodeeo_app/helper/display.dart';
import 'package:kodeeo_app/pages/bootcamp.dart';
import 'package:kodeeo_app/pages/notification.dart';
import 'package:kodeeo_app/pages/profile.dart';
import 'package:kodeeo_app/widgets/Our_service.dart';
import 'package:kodeeo_app/widgets/drawer.dart';
import 'package:kodeeo_app/widgets/our_client.dart';
import '../helper/image.dart';
import '../helper/shared_value_helper.dart';
import 'bootcamp_details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var imgList = PhotosLink.imgList;
  initState(){
    isLogin.load();
    isChecked.load();
    sharedEmail.load();
    sharedPass.load();
    print(isLogin.$);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var myData = BootCamp.myData;
    var width = MediaQuery.of(context).size.width;
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
        body: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: displayHeight(context)*0.20,
                  width: displayWidth(context),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      enableInfiniteScroll: true
                    ),
                    items: imgList
                        .map((item) => Padding(
                          padding: const EdgeInsets.only(left: 5,right: 5),
                          child: Card(
                            elevation: 5,
                            clipBehavior: Clip.hardEdge,
                            child: imageLoader(imageUrl:item,fit:BoxFit.cover)
                          ),
                        ))
                        .toList(),
                  )),
              SizedBox(height: displayHeight(context)*0.02,),

              Container(
                height: displayHeight(context)*0.10,
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                  //    onPressed: (){},
                      onPressed: () =>Navigator.push(context, MaterialPageRoute(builder: (context)=>OurService.ourService_singlePage())),
                      child: Text(
                        "Our Services",
                        style: TextStyle(fontSize: 16),
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
                        style: TextStyle(fontSize: 16),
                      ),
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.indigo),
                          foregroundColor: Colors.indigo,
                          elevation: 2),
                    )
                  ],
                ),
              ),
              // end image and button area
              SizedBox(height: displayHeight(context)*0.02,),



          SizedBox(
            height: displayHeight(context)*0.435,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                      height: 300,
                      // width: MediaQuery.of(context).size.width * 0.9,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: myData.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: SizedBox(
                                width: width * 0.70,
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: InkWell(
                                    onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) =>  BootcampDetails(courseId: myData[index]["id"],title: myData[index]["name"],img: myData[index]["image"],discribtuion: myData[index]["details"],))),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: width * 0.90,
                                          height: 150,
                                          child: imageLoader(imageUrl: myData[index]["image"]),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(10),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${myData[index]["name"]}",
                                                style: TextStyle(
                                                    fontSize: 14,
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
                                                                    .online_prediction_outlined,color: Colors.redAccent,
                                                                size: 20),
                                                            style: TextStyle(fontSize:16,decorationColor: Colors.redAccent,decoration: myData[index]["stutas"]=="offline"?TextDecoration.lineThrough:null,decorationThickness: 1.5,)
                                                        ),
                                                        TextSpan(
                                                          text:
                                                          "  ${myData[index]["stutas"]} ",
                                                          style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 12,
                                                              height: 0.8),
                                                        ),
                                                      ],
                                                    ),
                                                  )),
                                              Container(
                                                  margin: EdgeInsets.only(top: 5),
                                                  width: 300,
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [

                                                      RichText(
                                                        text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                  text: " ৳ ",
                                                                  style: TextStyle(
                                                                      fontSize: 18,color: Colors.black
                                                                  )
                                                              ),
                                                              TextSpan(
                                                                text: "${myData[index]["CoursePrice"]}",
                                                                style: TextStyle(
                                                                    color: myData[index]["discoundPrice"]!=null?Colors.grey:Colors.black,
                                                                    fontSize: 12, fontWeight: FontWeight.bold,height: 1,decoration: myData[index]["discoundPrice"]!=null?TextDecoration.lineThrough:null,decorationColor: Colors.black),
                                                              )
                                                            ]
                                                        ),
                                                      ),
                                                      RichText(
                                                        text: TextSpan(
                                                            children:myData[index]["discoundPrice"]!=null?[
                                                              TextSpan(
                                                                  text: " ৳",
                                                                  style: TextStyle(
                                                                      fontSize: 18,color: Colors.black
                                                                  )
                                                              ),
                                                              TextSpan(
                                                                text:  " ${myData[index]["discoundPrice"]}",
                                                                style: TextStyle(
                                                                    color:Colors.black,
                                                                    fontSize: 12, fontWeight: FontWeight.bold,height: 1),
                                                              )
                                                            ]:null
                                                        ),
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
                ],
              ),
            ),
          )
              // Text("Our Service",textAlign: TextAlign.right,style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
              // OurService.slider(),
    ],
          ),
        ),
      bottomNavigationBar: Container(
        height: displayHeight(context)*0.085,
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
          child: BottomNavigationBar(
            currentIndex: 0,
            // rippleColor: Colors.grey[300]!,
            // hoverColor: Colors.grey[100]!,
            // gap: 8,
            // activeColor: Colors.black,
            iconSize: 16,
            // duration: Duration(milliseconds: 400),
            // tabBackgroundColor: Colors.grey[100]!,
            // color: Colors.black,
            items: [

              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.list),
                label: 'Bootcamp',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),

            ],
            onTap: (index) {
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
    );
  }
}
