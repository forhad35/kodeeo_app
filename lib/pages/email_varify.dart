import 'package:flutter/material.dart';
import 'package:kodeeo_app/helper/display.dart';
import 'package:kodeeo_app/pages/change_password.dart';

class EmailVerification extends StatelessWidget {
  EmailVerification({super.key});
  var vCode;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: displayHeight(context),
        width: displayWidth(context),

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: displayHeight(context)*0.07,),
                Container(
                  width: displayWidth(context)*0.5,
                  child: Image.asset("images/email.png",height: 200,),
                ),
                Text("Check Your Mail For Security Code"),
                SizedBox(height: 50,),
                Text("Enter 4 Digit Verification Code ",
                  style: TextStyle(fontSize: 14,),),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                    children: [
                      Container(height: 60,width: 35,
                        child: TextField(
                          style: TextStyle(fontSize: 16),
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            vCode= value.toString();
                          },
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(width: 2, color: Colors.orange)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(width: 2, color: Colors.grey)),
                          ),
                        ),
                      ),
                      Container(height: 60,width: 35,
                        child: TextField(
                          style: TextStyle(fontSize: 16),
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            vCode= value.toString();
                          },
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(width: 2, color: Colors.orange)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(width: 2, color: Colors.grey)),
                          ),
                        ),
                      ),
                      Container(height: 60,width: 35,
                        child: TextField(
                          style: TextStyle(fontSize: 16),
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            vCode= value.toString();
                          },
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(width: 2, color: Colors.orange)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(width: 2, color: Colors.grey)),
                          ),
                        ),
                      ),
                      Container(height: 60,width: 35,
                        child: TextField(
                          style: TextStyle(fontSize: 16),
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            vCode= value.toString();
                          },
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(width: 2, color: Colors.orange)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(width: 2, color: Colors.grey)),
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
                SizedBox(height: 50,),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangPassword()));

                    },
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red),
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width*0.5,
                      height: 50,
                      child: Text(
                        "Verify",
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
