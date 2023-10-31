import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
   ProfileInfo({super.key});
var profile_info = [
  {"nametitle": "Name" , "name": "Jon Dou"},
  {"nametitle": "Email" , "name": "example@gmail.com"},
  {"nametitle": "Phone" , "name": "01752136445"},
  {"nametitle": "Device" , "name": "Laptop"},
];
  @override
  Widget build(BuildContext context) {
    return Center(

      child:  ListView.builder(
        itemCount: profile_info.length ,
          itemBuilder: (context,index){
            return Container(
              width: double.infinity,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                borderOnForeground: false,
                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,left: 30,bottom: 10),
                  child: RichText(
                    textAlign: TextAlign.start,
                    text:  TextSpan(
                      children: [
                       TextSpan(
                         text: "${profile_info[index]["nametitle"]} : "
                       ),
                        TextSpan(
                            text: "${profile_info[index]["name"]}  "
                        )

                      ],
                    style: TextStyle(
                        color: Color(0xFF333664),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),),
                ),
              ),
            );
          }),
    );
  }
}
