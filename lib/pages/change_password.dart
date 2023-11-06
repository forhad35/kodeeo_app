import 'package:flutter/material.dart';
import 'package:kodeeo_app/helper/validations.dart';

import '../helper/display.dart';

class ChangPassword extends StatefulWidget {
  const ChangPassword({super.key});

  @override
  State<ChangPassword> createState() => _ChangPasswordState();
}

class _ChangPasswordState extends State<ChangPassword> {
  TextEditingController newPass= TextEditingController();
  TextEditingController confirmPass= TextEditingController();
  bool isConfirmPass=false;
  bool isNewPass=false;
  String nPassErrMgs="";
  String cPassErrMgs="";

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

                     Text("New password must be different from previously used password*",style: TextStyle(fontSize: 14),),
                     SizedBox(height: 18,),
                     Text("New password"),
                     TextField(
                       onChanged: (value){
                         if(Validations.passIsValid(value)){
                           isNewPass=false; nPassErrMgs="";
                           setState(() {
                           });
                         }else{
                           isNewPass=true;
                           nPassErrMgs="Minimum 8 digit Require";
                           setState(() {
                           });
                         }
                       },

                       obscureText: true,
                       controller: newPass,
                       decoration: InputDecoration(
                         errorText: isNewPass ? nPassErrMgs: null,
                         isDense: true,
                         contentPadding: EdgeInsets.all(10),
                         border: UnderlineInputBorder(
                           borderRadius: BorderRadius.circular(8.0),
                           borderSide: BorderSide.none,
                         ),

                         fillColor: Colors.black12,
                         filled: true,
                       ),
                     ),
                     SizedBox(height: 10,),
                     Text("Confirm password"),
                     TextField(
                       style: TextStyle(fontSize: 14),
                       controller: confirmPass,
                       obscureText: true,
                       decoration: InputDecoration(
                         isDense: true,
                         errorText: isConfirmPass ? cPassErrMgs: null,
                         contentPadding: EdgeInsets.all(10),
                         border: UnderlineInputBorder(
                           borderRadius: BorderRadius.circular(8.0),
                           borderSide: BorderSide.none,
                         ),

                         fillColor: Colors.black12,
                         filled: true,
                       ),
                     ),
                     SizedBox(height: 50,),
                     Container(
                       height: 50,
                       width: displayWidth(context)*0.8,
                       child: ElevatedButton(
                           onPressed: () {
                              if(newPass.text.isNotEmpty && confirmPass.text.isNotEmpty){
                                if(newPass.text.length <8){
                                  isNewPass=true;
                                  isConfirmPass=true;
                                  nPassErrMgs="Minimum 8 digit Require";
                                  cPassErrMgs="Minimum 8 digit Require";
                                }else{
                                  if(newPass.text!=confirmPass.text){
                                    isConfirmPass=true;
                                    cPassErrMgs="Password Not Matched!";
                                  }else{
                                    isConfirmPass=false;
                                    isNewPass=false;
                                    // go to changes here
                                  }
                                }
                              }else if(newPass.text.isEmpty){
                                isNewPass=true;
                                nPassErrMgs="Field in Empty!";
                              }else if(confirmPass.text.isEmpty){
                                isConfirmPass=true;
                                cPassErrMgs="Field in Empty!";
                              }
                              // on click state change here
                             setState(() {
                             });
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
