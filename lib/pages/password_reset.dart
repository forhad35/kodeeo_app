import 'package:flutter/material.dart';
import 'package:kodeeo_app/helper/display.dart';
import 'package:kodeeo_app/pages/email_varify.dart';

class PassReset extends StatelessWidget {
   PassReset({super.key});
var email;
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
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: displayHeight(context)*0.07,),
                Container(
                  width: displayWidth(context)*0.5,
                  child: Image.asset("images/lock.png",height: 200,),
                ),
                Text("Password RESET Option"),
                SizedBox(height: 50,),
                Row(
                  children: [
                    Text("Enter Your Registered Email : ",textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 18,),),
                  ],
                ),
                SizedBox(height: 10,),
                TextField(
                  onChanged: (value) {
                    email= value.toString();
                  },
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email),
                    labelStyle:
                    TextStyle(fontSize: 18),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 2, color: Colors.orange)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 2, color: Colors.grey)),
                  ),
                ),
                SizedBox(height: 50,),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>EmailVerification()));
                    },
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.cyan),
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width*0.5,
                      height: 50,
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            fontSize: 22,height: 2),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
