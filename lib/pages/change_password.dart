import 'package:flutter/material.dart';

import '../helper/display.dart';

class ChangPassword extends StatefulWidget {
  const ChangPassword({super.key});

  @override
  State<ChangPassword> createState() => _ChangPasswordState();
}

class _ChangPasswordState extends State<ChangPassword> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: displayHeight(context),
        width: displayWidth(context),

        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: displayHeight(context)*0.07,),
                Text("Create new Password",style: TextStyle(fontSize: 24),),
                SizedBox(height: displayHeight(context)*0.025,),
                Container(
                  width: displayWidth(context)*0.4,
                  child: Image.asset("images/lock.png",height: 150,),
                ),
                SizedBox(height: 30,),
               Container(
                 width: displayWidth(context)*0.8,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Create new password ",
                       style: TextStyle(fontSize: 18,),),
                     SizedBox(height: 18,),

                     Text("New password must be different from previously used password",style: TextStyle(fontSize: 14),),
                     SizedBox(height: 18,),
                     Text("New password"),
                     Container(
                       height: 50,
                       width: displayWidth(context)*0.8,
                       child: TextField(

                         onChanged: (value) {
                           var email= value.toString();
                         },
                         decoration: InputDecoration(
                           border: UnderlineInputBorder(
                             borderRadius: BorderRadius.circular(8.0),
                             borderSide: BorderSide.none,
                           ),

                           fillColor: Colors.black12,
                           filled: true,
                         ),
                       ),
                     ),
                     SizedBox(height: 10,),
                     Text("Confirm password"),
                     Container(
                       height: 50,
                       width: displayWidth(context)*0.8,
                       child: TextField(

                         onChanged: (value) {
                           var email= value.toString();
                         },
                         decoration: InputDecoration(
                           border: UnderlineInputBorder(
                             borderRadius: BorderRadius.circular(8.0),
                             borderSide: BorderSide.none,
                           ),

                           fillColor: Colors.black12,
                           filled: true,
                         ),
                       ),
                     ),
                     SizedBox(height: 50,),
                     Container(
                       height: 50,
                       width: displayWidth(context)*0.8,
                       child: ElevatedButton(
                           onPressed: () {
                           },
                           style: ElevatedButton.styleFrom(
                               foregroundColor: Colors.white,
                               backgroundColor: Colors.cyan,
                             shape:RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(7)
                             )
                           ),
                           child: Text(
                             "Submit",
                             style: TextStyle(
                                 fontSize: 18,height: 2),
                             textAlign: TextAlign.center,
                           )),
                     ),
                   ],
                 ),
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
