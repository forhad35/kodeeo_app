import 'package:flutter/material.dart';
import 'package:kodeeo_app/helper/display.dart';
import 'package:kodeeo_app/widgets/profile_settings.dart';

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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: displayWidth(context),
      height: 360,
      child: Column(
        children: [
          Container(
            //width: displayWidth(context),
              alignment: Alignment.topRight,
              child: TextButton.icon(
                  onPressed: () {
                    setState(() {
                      editFromText=true;
                    });
                  },
                  icon: Icon(
                    Icons.mode_edit,
                    size: 14,
                  ),
                  label: Text("Edit"))),
          Container(
            height: 320,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Name",style: TextStyle(fontSize: 16),),
                      ),
                      TextFormField(
                        enabled: editFromText,
                        controller: name,
                        style: TextStyle(fontSize:18,color: Colors.indigo,height: 1),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: Colors.orange)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: Colors.indigo)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: Colors.indigo)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Email",style: TextStyle(fontSize: 16),),
                      ),
                      TextFormField(
                        enabled: editFromText,
                        controller: email,
                        style: TextStyle(fontSize:18,color: Colors.indigo,height: 1 ),
                        decoration: InputDecoration(

                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: Colors.orange)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: Colors.indigo)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: Colors.indigo)),

                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Phone",style: TextStyle(fontSize: 16),),
                      ),
                      TextFormField(
                        enabled: editFromText,
                        controller: phone,
                        style: TextStyle(fontSize:18,color: Colors.indigo,height: 1 ),
                        decoration: InputDecoration(

                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: Colors.orange)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: Colors.indigo)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: Colors.indigo)),

                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                    ],
                  )),

            ),
          ),
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
    );;
  }

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
                  Form(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Old Password",style: TextStyle(fontSize: 14),),
                      ),
                      TextFormField(
                        controller: oldPass,
                        style: TextStyle(fontSize: 20,height: .8),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: Colors.orange)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: Colors.indigo)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: Colors.indigo)),
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
                        style: TextStyle(fontSize: 20,height: .8),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: Colors.orange)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: Colors.indigo)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: Colors.indigo)),
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
                        style: TextStyle(fontSize: 20,height: .8),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: Colors.orange)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: Colors.indigo)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide:
                              BorderSide(width: 1, color: Colors.indigo)),
                        ),
                      ),
                    ],
                  )),
                  SizedBox(
                    height: 15,
                  ),
                  OutlinedButton(
                      onPressed: () {
                        setState(() {

                        if(oldPass.text!=userpass.toString()){
                          alertbox("Kodeeo LTD", "Wrong old Password");
                          print("wpp");

                        }else if(newPass.text!=confirmPass.text){
                          alertbox("Kodeeo LTD", "Password not match");
                          print("not match");
                        }else{
                          alertbox("Kodeeo LTD", "Change Successfully");
                          print("done");
                        }
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
                  SizedBox(height: MediaQuery.of(context).viewInsets.bottom,)
                ],
              ),
            ),
          ),
        );
      },
    );
  } // modalBottomSheet

void alertbox(String title, String message){
    AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        OutlinedButton(onPressed: (){}, child: Text("OK"))
      ],
    );
}
}

