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
  void modal(BuildContext context) {
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
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}
