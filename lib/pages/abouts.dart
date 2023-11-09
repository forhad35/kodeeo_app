import 'package:flutter/material.dart';
import 'package:kodeeo_app/helper/image.dart';

class AboutUs extends StatefulWidget {
   AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
var page_title ="About US";

var heading="WE ARE KODEEO";

var description="We create useful software and mobile app as well as we provide custom development services. "
    "Have an idea ? Let us help you land your dream project.";

var despcription_2="It’s a changing world with changing time and generation so we assure to go accordingly."
    " Our software company is mainly based on to value your thoughts and bring your requirements to a true form "
    "and also we intend with our learning platform ensuring that you have the right knowledge to show up "
    "your true worth, because you deserve to be valued. Interacting with you will please us to ensure your"
    " prime time being valued efficiently. We will honestly be assured on being supportive to build up your "
    "knowledge or your dream project.";

var image="https://www.kodeeo.com/images/gallery/about-us.png";

var image2="https://cdn2.iconfinder.com/data/icons/web-development-137/256/-_0012_G12.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.page_title)),
        body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Container(alignment: AlignmentDirectional.topStart,padding: EdgeInsets.only(left: 10,top: 15,bottom: 10),
                  child: Text(heading,textAlign: TextAlign.right,style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width:MediaQuery.of(context).size.width /2,child: Text(description,style: TextStyle(fontSize: 18,),)),
                  Container(
                    child: imageLoader(
                    imageUrl: image2,
                    height: 250,
                      width: MediaQuery.of(context).size.width/2.5

                  ),),
                ],
              ),
              Text(despcription_2,style: TextStyle(fontSize: 18),),
            ],
          ),
        ),
      ),
    );
  }
}
