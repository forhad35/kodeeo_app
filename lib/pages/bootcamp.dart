import 'package:flutter/material.dart';
import 'package:kodeeo_app/widgets/about_our_course.dart';

import '../widgets/drawer.dart';
import 'bootcamp_details.dart';
class BootCamp extends StatelessWidget {

  static List myData = [
    {"id": 1, "name": "Web Development Bootcamp (PHP-Laravel)", "CoursePrice": "৳ 15,000 BDT","discoundPrice":" ৳ 12,000 BDT",'image':"https://www.kodeeo.com/upload/banner642bd5e4b45410.11772214.jpg","duration":"4 Months | 32 classes","stutas":"offline","details":"""
  A boot camp (or Bootcamp) is a type of program that is intensive in nature and requires strict discipline. It has a military connotation, but the term is applied to any program of that nature. Whether your plan is to launch your startup or join the engineering teams of amazing companies, the skills you acquire with us will set you apart in interviews and day-to-day execution.If you have no coding experience, let us know when you apply and we will sit together and find out what you are passionate about and draw a path to achieve it. Our program works equally well for participants with no coding experience and those with more experience.
  Learning how to code can be difficult, especially when you don't have an idea about it. At Project Code, we'll exponentially accelerate your learning curve by providing you with the right input at the right time. Our instructors are experienced and will guide every step of your learning process."""},
    {"id": 2, "name": "Graphic Design Bootcamp 101", "CoursePrice": "৳ 15,000 BDT","discoundPrice":" ৳ 12,000 BDT","image":'https://www.kodeeo.com/upload/banner64777eb07fe715.99003600.jpg',"duration":"2 Months | 30 classes","stutas":"offline","details":"BASIC Graphic Design Bootcamp"},
    {"id": 3, "name": "Mobile App Development with Flutter", "CoursePrice": "৳ 15,000 BDT","discoundPrice":" ৳ 12,000 BDT","image":'https://www.kodeeo.com/upload/banner642bd6556263c2.03575369.jpg',"duration":"4 Months | 30 classes","stutas":"offline","details":"Flutter is an open-source software development kit which enables smooth and easy cross-platform mobile app development. You can build high quality natively compiled apps for iOS and Android quickly, without having to write the code for the two apps separately. All you need is one codebase for both platforms."},
    {"id": 4, "name": "Front-End Bootcamp with React", "CoursePrice": "৳ 15,000 BDT","discoundPrice":" ৳ 12,000 BDT" ,"image":'https://www.kodeeo.com/upload/banner642bd6a727f649.37765077.jpg',"duration":"4 Months | 30 classes","stutas":"offline","details":"""
    Ever thought, you're spending your everyday time on facebook, twitter and lots of other useful websites and how they develop!
Are you curious about web development but don't know where to start? Would you like to be able to build your own websites? Have you tried learning HTML, CSS & JavaScript, but found other courses too boring, outdated, difficult?
If your answer is YES to any of these questions, then this is the course for you! You won't find boring, I promise!
You'll learn the most advanced cutting edge web technologies to built your website. At the end of course you'll able to build any websites you can imagine. So, why are you waiting for? Get ready to binge!
    """},
    {"id": 5, "name": "Learn SQA from Expert", "CoursePrice": "৳ 15,000 BDT","image":'https://www.kodeeo.com/upload/banner5f972879c2676.webp',"duration":"3 Months | 30 classes","stutas":"online","details":"BASIC Graphic Design Bootcamp"},
    {"id": 6, "name": "Industrial Training", "CoursePrice": "৳ 15,000 BDT","discoundPrice":" ৳ 12,000 BDT","image":'https://www.kodeeo.com/upload/banner6477825eef2db7.37896331.png',"duration":"4 Months | 32 classes","stutas":"offline","details":"Industrial Training for Diploma Students."},
    {"id": 7, "name": "Bootcamp on Advance Laravel", "CoursePrice": "৳ 15,000 BDT","discoundPrice":" ৳ 12,000 BDT","image":'https://www.kodeeo.com/upload/banner639448820fb6f7.93044333.png',"duration":"2 Months | 16 classes","stutas":"offline","details":"Bootcamp on Advance Laravel"},
  ];
  @override
  Widget build(BuildContext context) {
    var _width= MediaQuery.of(context).size.width;
  var _height= MediaQuery.of(context).size.height;

    return Scaffold(
      appBar:AppBar(
        title: Text("Bootcamp"),
        centerTitle: true,
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: myData.length,
        itemBuilder: (BuildContext context, int index) {
          String discountPrice;
          if(myData[index]["discoundPrice"] != null){
             discountPrice =  myData[index]["discoundPrice"];
          }else{
            discountPrice = " ";
          }
          return Container(
            padding: EdgeInsets.only(top:10,bottom: 10,right: 15,left: 15),
            height: 530,
            width: MediaQuery.of(context).size.width,
            child: Card(
              surfaceTintColor: Colors.white,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 2,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Theme.of(context).colorScheme.outline,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                      fit: BoxFit.fill,
                      repeat: ImageRepeat.noRepeat,
                      width: 600,
                      height: 240,
                      "${myData[index]["image"]}" ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${myData[index]["name"]}" ,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 300,
                            child: Text(
                              "${myData[index]["duration"]}",
                              style: TextStyle(
                                  fontSize: 14),textAlign: TextAlign.center,
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 300,
                            child: RichText(
                              softWrap: true,
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(Icons.offline_pin_outlined, size: 16),
                                  ),
                                  TextSpan(
                                    text: "${myData[index]["stutas"]} ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16, height: 1),
                                  ),
                                ],
                              ),
                            )
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${myData[index]["CoursePrice"]}",
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold,height: 1,decoration: myData[index]["discoundPrice"]!=null?TextDecoration.lineThrough:null),textAlign: TextAlign.center,
                                ),
                                Text(
                                  discountPrice.toString(),
                                  style: TextStyle(

                                      fontSize: 16, fontWeight: FontWeight.bold,height: 1),textAlign: TextAlign.center,
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            try {

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  BootcampDetails(title: myData[index]["name"],img: myData[index]["image"],discribtuion: myData[index]["details"],)));
                            } catch (e) {
                              print(e);
                            }
                          },
                          child: SizedBox(
                              width: double.infinity,
                              height: 45,
                              child: Text(
                                "Details",
                                style: TextStyle(fontSize: 18, height: 2),
                                textAlign: TextAlign.center,
                              )
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
