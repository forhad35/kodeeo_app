import 'package:flutter/material.dart';
import 'package:kodeeo_app/data/model/contact_data.dart';
import 'package:kodeeo_app/helper/display.dart';
import 'package:kodeeo_app/pages/abouts.dart';
import 'package:kodeeo_app/pages/contact_page.dart';
import 'package:kodeeo_app/pages/login.dart';
import 'package:kodeeo_app/pages/photo_gallery.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Drawers extends StatelessWidget {
   Drawers({super.key});
  String imgLink = "https://cdn1.iconfinder.com/data/icons/neutro-essential/32/user-512.png";

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      semanticLabel: "Menu",
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 60,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                  border: Border.all(
                    color: Colors.black,
                    width: 1
                  )
                ),
                  child: Image.network(imgLink,height: 50,width: 50,)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("MD : Hasan Mirza",style: TextStyle(fontSize: 14),),
                  Text("exmaple@gmail.com",style: TextStyle(fontSize: 12))

                ],
              )
            ],
          ),
          Divider(),
          SizedBox(height: 20,),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.black
            ),
            onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactPage())),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon( // <-- Icon
                  Icons.call,
                  size: 22.0,
                ), // <-- Text
                SizedBox(
                  width: 50,
                ),
                Text('Contact',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
                SizedBox(width: 100,)
              ],
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Colors.black
            ),
            onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUs())),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon( // <-- Icon
                  Icons.account_box_outlined,
                  size: 22.0,
                ), // <-- Text
                SizedBox(
                  width: 50,
                ),
                Text('About us',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
                SizedBox(width: 100,)
              ],
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Colors.black
            ),
            onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>PhotoGallery())),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon( // <-- Icon
                  Icons.photo,
                  size: 22.0,
                ), // <-- Text
                SizedBox(
                  width: 50,
                ),
                Text('Photo gallery',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
                SizedBox(width: 55,)
              ],
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Colors.black
            ),
            onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Login())),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon( // <-- Icon
                  Icons.login,
                  size: 22.0,
                ), // <-- Text
                SizedBox(
                  width: 50,
                ),
                Text('Login',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
                SizedBox(width: 100,)
              ],
            ),
          ),
         SizedBox(height: displayHeight(context)/3,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: FaIcon(FontAwesomeIcons.facebook),color: Colors.blue,
                onPressed: (){},
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.twitter),color: Colors.blue,
                onPressed: (){},
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.linkedin),color: Colors.blue,
                onPressed: (){},
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.internetExplorer),color: Colors.blue,
                onPressed: (){},
              ),

            ],),
          // Container(
          //   margin: const EdgeInsets.only(bottom:50.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       // SizedBox(height: 100,width: MediaQuery.of(context).size.width*0.50,),
          //       // IconButton(onPressed: (){
          //       //   Navigator.of(context).pop();
          //       // }, icon: Icon(Icons.cancel,color: Colors.pink,),iconSize: 50,)
          //     ],
          //   ),
          // ),


        ],
      ),
    );
  }
}
