import 'package:flutter/material.dart';
import 'package:kodeeo_app/pages/abouts.dart';
import 'package:kodeeo_app/pages/contact_page.dart';
import 'package:kodeeo_app/pages/login.dart';
import 'package:kodeeo_app/pages/photo_gallery.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
import '../helper/image.dart';
@immutable
class Drawers extends StatelessWidget {
   Drawers({super.key});
  final String imgLink = "https://cdn1.iconfinder.com/data/icons/neutro-essential/32/user-512.png";

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      semanticLabel: "Menu",
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50,),
          ListTile(
            leading: Container(
                height: 40,
                width: 40,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    )
                ),
                child: imageLoader(imageUrl:imgLink,height: 40,width: 40,errorImage: "images/profile.png")),
            title:     Text("MD : Hasan Mirza",style: TextStyle(fontSize: 14),),
            subtitle:  Text("exmaple@gmail.com",style: TextStyle(fontSize: 12)),
          ),
          Divider(),
          SizedBox(height: 20,),
          InkWell(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactPage())),
            child: ListTile(
              horizontalTitleGap: 30,
              leading: Icon( // <-- Icon
                  Icons.call,
                  size: 24.0,color: Colors.grey,
                ), // <-- Text
            title:  Text('Contact',style: TextStyle(fontSize: 14,),),
            ),
          ),
          InkWell(
            onTap:()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUs())),
            child: ListTile(
              horizontalTitleGap: 30,
              leading: Icon( // <-- Icon
                Icons.account_box_outlined,
                size: 24.0,color: Colors.grey,
              ), // <-- Text
              title:  Text('About us',style: TextStyle(fontSize: 14,),),
            ),
          ),
          InkWell(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>PhotoGallery())),
            child: ListTile(
              horizontalTitleGap: 30,
              leading: Icon( // <-- Icon
                Icons.photo,
                size: 24.0,color: Colors.grey,
              ), // <-- Text
              title:  Text('Photo gallery',style: TextStyle(fontSize: 14,),),
            ),
          ),
          InkWell(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Login())),
            child: ListTile(
              horizontalTitleGap: 30,
              leading: Icon( // <-- Icon
                Icons.login,
                size: 24.0,color: Colors.grey,
              ), // <-- Text
              title:  Text('Login',style: TextStyle(fontSize: 14,),),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.facebook),color: Colors.blue,
                      onPressed: (){
                        launcher.launchUrl(Uri.parse("https://www.facebook.com/Kodeeo/"));
                      },
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.twitter),color: Colors.blue,
                      onPressed: (){
                        launcher.launchUrl(Uri.parse("https://twitter.com/KodeeoCom"));

                      },
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.linkedin),color: Colors.blue,
                      onPressed: (){
                        launcher.launchUrl(Uri.parse("https://www.linkedin.com/company/kodeeo/"));

                      },
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.internetExplorer),color: Colors.blue,
                      onPressed: (){
                        launcher.launchUrl(Uri.parse("https://www.kodeeo.com"));
                      },
                    ),

                  ],),
              ),
            ),
          ),



        ],
      ),
    );
  }
}
