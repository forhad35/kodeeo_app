import 'package:flutter/material.dart';
import 'package:kodeeo_app/helper/display.dart';
import 'package:kodeeo_app/widgets/profile_settings.dart';
import 'package:kodeeo_app/widgets/radio_button.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({super.key});

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {

  var profile_info = [
    {"nametitle": "Name", "name": "Jon Dou"},
    {"nametitle": "Email", "name": "example@gmail.com"},
    {"nametitle": "Phone", "name": "01752136445"},
    {"nametitle": "Device", "name": "Laptop"},
  ];
  var userpass="kodeeo";
  var name=TextEditingController(text: "your name");
  var email=TextEditingController(text: "example.mail.com");
  var phone=TextEditingController(text: "017*******");
  bool editFromText=false;
  Color activecolor=Colors.indigo;
  Color nonactivecolor=Colors.black54;
  Color focuscolor=Colors.lightGreen;
  Color errorcolor = Colors.redAccent;
  var swaingcolor; /// active notactive color sowing variable

  bool errorText=false;
  bool errorText1=false;
  var gkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: displayHeight(context)*0.53,
        child: Column(
          children: [
            Container(
                alignment: Alignment.topRight,
                child: TextButton.icon(
                    onPressed: () {
                      setState(() {
                        editFromText=true;
                        swaingcolor=nonactivecolor;
                        nonactivecolor=activecolor;
                      });
                    },
                    icon: Icon(
                      Icons.mode_edit,
                      size: 14,
                    ),
                    label: Text("Edit"))),
            Container(
              height: displayHeight(context)*0.48,
              child: SingleChildScrollView(
                child: Container(
                  width: displayWidth(context),
                  height: displayHeight(context)*0.60,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10,bottom: 0),
                        // height: 700,
                        width: displayWidth(context),
                        child: Column(
                          children: [
                            Form(
                                child: Container(
                                  height:317,
                                  width: displayWidth(context),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Text("Name",style: TextStyle(fontSize: 16,color: nonactivecolor),),
                                      ),
                                      TextFormField(
                                        enabled: editFromText,
                                        controller: name,
                                        style: TextStyle(fontSize:14,color: nonactivecolor,),
                                        decoration: InputDecoration(
                                          isDense: true,
                                          contentPadding: EdgeInsets.all(10),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              borderSide:
                                              BorderSide(width: 1, color: focuscolor)),
                                          disabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              borderSide:
                                              BorderSide(width: 1, color: nonactivecolor)),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              borderSide:
                                              BorderSide(width: 1, color: nonactivecolor)),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Text("Email",style: TextStyle(fontSize: 16,color: nonactivecolor),),
                                      ),
                                      TextFormField(
                                        enabled: editFromText,
                                        controller: email,
                                        style: TextStyle(fontSize:14,color: nonactivecolor, ),
                                        decoration: InputDecoration(
                                          isDense: true,
                                          contentPadding: EdgeInsets.all(10),

                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              borderSide:
                                              BorderSide(width: 1, color: focuscolor)),
                                          disabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              borderSide:
                                              BorderSide(width: 1, color: nonactivecolor)),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              borderSide:
                                              BorderSide(width: 1, color: nonactivecolor)),

                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Text("Phone",style: TextStyle(fontSize: 16,color: nonactivecolor),),
                                      ),
                                      TextFormField(
                                        enabled: editFromText,
                                        controller: phone,
                                        style: TextStyle(fontSize:14,color: nonactivecolor, ),
                                        decoration: InputDecoration(
                                          isDense: true,
                                          contentPadding: EdgeInsets.all(10),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              borderSide:
                                              BorderSide(width: 1, color: focuscolor)),
                                          disabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              borderSide:
                                              BorderSide(width: 1, color: nonactivecolor)),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              borderSide:
                                              BorderSide(width: 1, color: nonactivecolor)),

                                        ),
                                      ),
                                      Transform.translate(offset:Offset(10, 10),child: Text("Update Type Of Your Device")),
                                      RadioButton(),
                                      // SizedBox(
                                      //   height: 10,
                                      // ),

                                    ],
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Visibility(
                                    visible: editFromText,
                                    child: ElevatedButton(onPressed: () {
                                      setState(() {
                                        editFromText=false;
                                        nonactivecolor=swaingcolor;
                                        //nonactivecolor=swap;
                                      });
                                    },
                                      child: Text("Update Info"),style: ButtonStyle(enableFeedback: editFromText),),
                                  ),
                                  ElevatedButton(onPressed: () {
                                    modalBottomSheet(context);
                                  },
                                      child: Text("Change Password")),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
  }

  // bottom modal sheet function
  void modalBottomSheet(BuildContext context){
    var oldPass=TextEditingController();
    var newPass=TextEditingController();
    var confirmPass=TextEditingController();
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return   SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Form(
                    key: gkey,
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Old Password",style: TextStyle(fontSize: 14),),
                      ),
                      TextFormField(
                        validator: (value){
                          if(value != userpass){
                            return " Wrong Old Password!";
                          }
                        },
                        controller: oldPass,
                        autovalidateMode: AutovalidateMode.disabled,
                        obscureText: true,
                        style: TextStyle(fontSize: 20,height: .6),
                        decoration: InputDecoration(
                          errorText: errorText ? "Wrong Old password! ": null,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: focuscolor)),
                          // disabledBorder: OutlineInputBorder(
                          //     borderRadius: BorderRadius.all(Radius.circular(10)),
                          //     borderSide:
                          //     BorderSide(width: 1, color: Colors.indigo)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: activecolor)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: errorcolor)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: errorcolor)),

                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("New Password",style: TextStyle(fontSize: 14),),
                      ),
                      TextFormField(
                        controller: newPass,
                        style: TextStyle(fontSize: 20,height: .6),
                        obscureText: true,
                        decoration: InputDecoration(
                          errorText: errorText1 ? "Password Not Matching!": null,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: focuscolor)),
                          // disabledBorder: OutlineInputBorder(
                          //     borderRadius: BorderRadius.all(Radius.circular(10)),
                          //     borderSide:
                          //     BorderSide(width: 1, color: Colors.indigo)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: activecolor)),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                            BorderSide(width: 1, color: errorcolor)),

                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Confirm Password",style: TextStyle(fontSize: 14),),
                      ),
                      TextFormField(
                        controller: confirmPass,
                        validator: (value){
                          if(newPass.text != confirmPass.text){
                            return " Password is Not Match!" + confirmPass.text;
                          }
                        },
                        autovalidateMode: AutovalidateMode.disabled,
                        obscureText: true,
                        style: TextStyle(fontSize: 20,height: .6),
                        decoration: InputDecoration(
                          errorText: errorText1 ? "Password Not Matching!": null,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: focuscolor)),
                          // disabledBorder: OutlineInputBorder(
                          //     borderRadius: BorderRadius.all(Radius.circular(10)),
                          //     borderSide:
                          //     BorderSide(width: 1, color: Colors.indigo)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: activecolor)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: errorcolor)),
                        ),
                      ),

                    ],
                  )),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: OutlinedButton(
                        onPressed: () {

                          setState(() {
                            if(gkey.currentState!.validate()){
                              print("change success");
                              Navigator.pop(context);
                            }else {
                              print("false");
                            }

                          // if(oldPass.text!=userpass.toString()){
                          //  // alertbox("Kodeeo LTD", "Wrong old Password");
                          //   print("wpp");
                          //   errorText=true;
                          //
                          // }
                          // else if(newPass.text.isEmpty && confirmPass.text.isEmpty){
                          // //  alertbox("Kodeeo LTD", "Password is Empty");
                          //   print("Empty pass");
                          //   // errorText=true;
                          //   errorText1=true;
                          // }else if(newPass.text!=confirmPass.text){
                          //  // alertbox("Kodeeo LTD", "Password not match");
                          //   print("not match");
                          //   errorText1=true;
                          // }else{
                          //   alertbox("Kodeeo LTD", "Change Successfully");
                          //   print("done");
                          // }

                          });
                        },
                        style: ButtonStyle(
                          alignment: Alignment.center,
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
                        ),
                        child: Text(
                          "Change Password",
                          textAlign: TextAlign.center,
                        )),
                  ),
                  SizedBox(height: MediaQuery.of(context).viewInsets.bottom,)
                ],
              ),
            ),
          ),
        );
      },
    );
  } // modalBottomSheet


}

// class ProfileInfoEditButton extends StatefulWidget {
//   const ProfileInfoEditButton({super.key});
//
//   @override
//   State<ProfileInfoEditButton> createState() => _ProfileInfoEditButtonState();
// }
//
// class _ProfileInfoEditButtonState extends State<ProfileInfoEditButton> {
//   @override
//   Widget build(BuildContext context) {
//     return
//       Container(
//       height: displayHeight(context)*0.4,
//       child: Column(
//         children: [
//           Container(
//             //width: displayWidth(context),
//               alignment: Alignment.topRight,
//               child: TextButton.icon(
//                   onPressed: () {
//                     setState(() {
//                       // editFromText=true;
//                       // swaingcolor=nonactivecolor;
//                       // nonactivecolor=activecolor;
//                     });
//                   },
//                   icon: Icon(
//                     Icons.mode_edit,
//                     size: 14,
//                   ),
//                   label: Text("Edit"))),
//           Divider(),
//           Container(
//             height: 250,
//             child: ProfileInfo(),
//           )
//         ],
//       ),
//     );
//   }
// }
