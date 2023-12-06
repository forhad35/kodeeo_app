import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:kodeeo_app/api/signup.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool isProcessing=false;
  var _name = TextEditingController();
  var _email = TextEditingController();
  var _phone = TextEditingController();
  var _reference = TextEditingController();
  var _institute = TextEditingController();

  String emailRegex = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';

  final _registrationkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _registrationkey,
              child: Column(
                children: [
                  Image.asset("images/img.png",height: 100,width: 100,),
                  // ----------------------------------Name button---------------------------
                  TextFormField(
                    controller: _name,
                    validator: (value){
                      if(value==""){
                        return "Input your Name";
                      }
                      return null;
                    },

                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      labelText: "Name",
                      hintText: "Your Name",
                      labelStyle:
                      TextStyle(height: 1,fontSize: 14, fontWeight: FontWeight.bold),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1, color: Colors.orange)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(width: 1, color: Colors.grey)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1, color: Colors.redAccent)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1, color: Colors.redAccent)),
                    ),
                  ),
                  // ----------------------------------Email button---------------------------
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: _email,
                      validator: (value){
                        if(!RegExp(emailRegex).hasMatch(value!)){
                          return "Input Valid Email!";
                        }
                        return null;
                      },
                    enableSuggestions: true,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      labelText: "Email",
                      hintText: "example@gmail.com",
                      labelStyle:
                      TextStyle(height: 1,fontSize: 14, fontWeight: FontWeight.bold),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1, color: Colors.orange)),
                          enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(width: 1, color: Colors.grey)),
                          errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1, color: Colors.redAccent)),
                          focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1, color: Colors.redAccent)),
                    ),
                  ),
                  // ----------------------------------Phone button---------------------------
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: _phone,
                    validator: (value){
                      if(value.toString().length!=11){
                        return "Input Correct Number";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      labelText: "Phone",
                      hintText: "017xxxxxxx",
                      labelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1, color: Colors.orange)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(width: 1, color: Colors.grey)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1, color: Colors.redAccent)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1, color: Colors.redAccent)),
                    ),
                  ),
                  SizedBox(height: 20,),
                  // ----------------------------------Reference name button---------------------------
                  TextFormField(
                   controller: _reference,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      labelText: "Reference Name(optional)",
                      hintText: "Reference Name",
                      labelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1, color: Colors.orange)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(width: 1, color: Colors.grey)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1, color: Colors.redAccent)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1, color: Colors.redAccent)),

                    ),
                  ),
                  SizedBox(height: 20,),
                  // ----------------------------------Institute button---------------------------
                  TextFormField(
                    controller: _institute,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      labelText: "Institute (optional)",
                      hintText: "IUBAT",
                      labelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1, color: Colors.orange)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(width: 1, color: Colors.grey)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1, color: Colors.redAccent)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1, color: Colors.redAccent)),

                    ),
                  ),

                  // submit button
                  buttonWidget(),

                  Container(
                    padding: EdgeInsets.only(top: 15,bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Has Account? please",style: TextStyle(fontSize: 16),),
                        TextButton(
                            onPressed: () =>Navigator.pop(context),
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.deepPurple, ),
                            child: Text(
                              "login",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold,height: 2,decoration: TextDecoration.underline),
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  buttonWidget(){
    setState(() {
    });
    if(isProcessing){
      return Padding(
        padding: const EdgeInsets.only(top: 15,bottom: 15),
        child: const Center(child: CircularProgressIndicator()),
      );
    }else{
      return  Container(
        padding: EdgeInsets.only(top: 15,bottom: 15),
        child: ElevatedButton(
            onPressed: () async {
              if(_registrationkey.currentState!.validate()) {
                isProcessing = true;
                setState(() {});
                bool status = await SignupApi.userSignup(
                    _name.text, _email.text, _phone.text);
                if (status) {
                  isProcessing = false;
                  setState(() {});
                  Get.snackbar(
                      "Registration",
                      "Registration Success!"
                  );
                } else {
                  isProcessing = false;
                  setState(() {});
                  Get.snackbar(
                      "Registration",
                      "Registration Failed!"
                  );
                }
              }
            },
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.orange,
                backgroundColor: Colors.white),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width*0.7,
              height: 50,
              child: Text(
                "Course Register",
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold,height: 2.7),
                textAlign: TextAlign.center,
              ),
            )),
      );
    }
  }
}
