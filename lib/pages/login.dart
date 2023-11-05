import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kodeeo_app/helper/display.dart';
import 'package:kodeeo_app/pages/password_reset.dart';
import 'package:kodeeo_app/pages/registration_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passwordVisible = false;
  var _EmailController = TextEditingController();
  var _PassController = TextEditingController();
  var pass = "kodeeo";
  var email = "kodeeo@gmail.com";
   final _loginkey = GlobalKey<FormState>();
  List<String> userData = [];
String? helper ;
  String emailRegex = r'^[\w-]+(\.[a-z]{2,8}+)*@[\w-]+(\.[\w-]+)*(\.[a-z]{2,4})$';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: displayHeight(context)-100,
          width: displayWidth(context),
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _loginkey,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset("images/img.png",
                height: 120,
                width: 150,
              ),
              // Text("Email : ${userData[0]} , Pass : ${userData[1]}"),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                controller: _EmailController,
                validator: (value){

                  if(value == ""){
                    return " Please enter email";
                  }else if(value != email){
                     return " Email doesn't  match";
                  }
                  return null;
                },
                onChanged: (value) {
                  // userData[0] = value.toString();
                  // setState(() {
                    // helper= value.toString();
                    // if(!RegExp(emailRegex).hasMatch(value)){
                    //   helper="invalid mail";
                    // }else{
                    //   helper="velid";
                    // }
                  // });
                },
                style: TextStyle(height: 1),
                decoration: InputDecoration(
                  errorStyle: TextStyle(color: Colors.red,fontSize: 12),
                  isDense: true,
                  contentPadding: EdgeInsets.only(top: 10,bottom: 10),
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  labelStyle: TextStyle(fontSize: 14),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 2, color: Colors.orange)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 2, color: Colors.indigo)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 2, color: Colors.redAccent)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 2, color: Colors.redAccent)),

                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value){
                  if(value == ""){
                    return " Please enter password";
                  }else if(value != pass){
                    return " Password doesn't  match";
                  }
                },
                // onChanged: (value) {
                //   userData[1] = value.toString();
                // },
                controller: _PassController,

                obscureText: passwordVisible,
                decoration: InputDecoration(
                  errorStyle: TextStyle(color: Colors.red,fontSize: 12),
                  isDense: true,
                  contentPadding: EdgeInsets.only(top: 10,bottom: 10),
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock,),
                  labelStyle:
                  TextStyle(fontSize: 14,),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 2, color: Colors.orange)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 2, color: Colors.indigo)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 2, color: Colors.redAccent)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 2, color: Colors.redAccent)),
                  suffixIcon: IconButton(
                    icon: Icon(passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,size: 14,),
                    onPressed: () {
                      setState(
                            () {
                          passwordVisible = !passwordVisible;
                        },
                      );
                    },
                  ),
                  alignLabelWithHint: false,
                  // filled: true,
                ),
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PassReset()));

                  },
                  child: Text(
                    "Forgot Password!",
                    style: TextStyle(fontSize: 14),
                  )),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    print(userData);
                    // _EmailController.clear();
                    setState(() {
                      if(_loginkey.currentState!.validate()){
                        print( "Email: ${_EmailController.text } ,password : ${_PassController.text}");
                      }else{
                        print(" not validet");

                      }
                    });
                    // setState(() {
                    //   userData[0]=_EmailController.text;
                    //   userData[1]=_PassController.text;
                    //
                    // });
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.orange,
                      backgroundColor: Colors.white),
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width*0.7,
                    height: 40,
                    child: Text(
                      "LogIn",
                      style: TextStyle(
                          fontSize: 18,height: 2),
                      textAlign: TextAlign.center,
                    ),
                  )),
              // SizedBox(
              //   height: 120,
              // ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account!"),
                      TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration())), child: Text("Register Here!")),
                    ],
                  ),
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
}
