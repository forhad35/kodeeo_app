import 'package:flutter/material.dart';

class ProfileSettings extends StatefulWidget {
   ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();


}

class _ProfileSettingsState extends State<ProfileSettings> {
  var oldPass=TextEditingController();
  var newPass=TextEditingController();
  var confirmPass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Old Password",style: TextStyle(fontSize: 12),),
                  ),
                  TextFormField(
                    controller: oldPass,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide:
                          BorderSide(width: 1, color: Colors.orange)),
                      disabledBorder: OutlineInputBorder(
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
                    child: Text("New Password",style: TextStyle(fontSize: 12),),
                  ),
                  TextFormField(
                    controller: newPass,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide:
                          BorderSide(width: 1, color: Colors.orange)),
                      disabledBorder: OutlineInputBorder(
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
                    child: Text("Confirm Password",style: TextStyle(fontSize: 16),),
                  ),
                  TextFormField(
                    controller: confirmPass,
                    style: TextStyle(fontSize: 20,height: 1),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide:
                          BorderSide(width: 1, color: Colors.orange)),
                      disabledBorder: OutlineInputBorder(
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
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                  onPressed: () {

                  },
                  child: SizedBox(
                    width: 300,
                    child: Text(
                      "Change Password",
                      textAlign: TextAlign.center,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
