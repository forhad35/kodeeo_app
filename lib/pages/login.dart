import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

  List<String> userData = [];
String helper ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Image.network(
                  "https://cdn0.iconfinder.com/data/icons/3d-user-interface-1/256/profile.png",
                  height: 120,
                  width: 150,
                ),
                // Text("Email : ${userData[0]} , Pass : ${userData[1]}"),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  controller: _EmailController,
                  onChanged: (value) {
                    // userData[0] = value.toString();
                    String emailRegex = r'^[\w-]+(\.[a-z]{2,8}+)*@[\w-]+(\.[\w-]+)*(\.[a-z]{2,4})$';

                    setState(() {
                     // helper= value.toString();
                      if(!RegExp(emailRegex).hasMatch(value)){
helper="not valid";
                      }else{
                        helper="velid";
                      }
                    });
                  },
                  decoration: InputDecoration(
                    helperText: helper,
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
                SizedBox(
                  height: 5,
                ),
                TextField(

                  onChanged: (value) {
                    userData[1] = value.toString();
                  },
                  // controller: _PassController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    labelStyle:
                        TextStyle(fontSize: 18,),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 2, color: Colors.orange)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 2, color: Colors.grey)),
                    suffixIcon: IconButton(
                      icon: Icon(passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
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
                      style: TextStyle(fontSize: 16),
                    )),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      print(userData);
                      _EmailController.clear();
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
                      height: 50,
                      child: Text(
                        "LogIn",
                        style: TextStyle(
                            fontSize: 22,height: 2),
                        textAlign: TextAlign.center,
                      ),
                    )),
                SizedBox(
                  height: 120,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account!"),
                    TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration())), child: Text("Register Here!")),
                  ],
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
