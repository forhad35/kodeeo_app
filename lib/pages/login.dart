
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kodeeo_app/helper/display.dart';
import 'package:kodeeo_app/pages/home.dart';
import 'package:kodeeo_app/pages/password_reset.dart';
import 'package:kodeeo_app/pages/registration_page.dart';

import '../helper/shared_value_helper.dart';

class Login extends StatefulWidget {
  final int? courseId;

  const Login({
    this.courseId
});


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
// var isEnrollment = widget.courseId ;
  @override
  void initState() {
    if(isChecked.$) {
      _EmailController.text = sharedEmail.$;
      _PassController.text = sharedPass.$;
    }
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: displayWidth(context),
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _loginkey,
          child: Column(
            children: [
              // SizedBox(
              //   height: 20,
              // ),
              Image.asset("images/img.png",
                height: 70,
                width: 70,
              ),
              SizedBox(height: 10,),
              Text(widget.courseId!=null?"Please Login to enroll":"",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 10,
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

                style: TextStyle(height: 1,fontSize: 12),
                decoration: InputDecoration(
                  errorStyle: TextStyle(color: Colors.red,fontSize: 12),
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email,size: 20,),
                  labelStyle: TextStyle(fontSize: 14),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 1, color: Colors.orange)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 1, color: Colors.indigo)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 1, color: Colors.redAccent)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 1, color: Colors.redAccent)),

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
                  return null;
                },
                // onChanged: (value) {
                //   userData[1] = value.toString();
                // },
                controller: _PassController,

                obscureText: passwordVisible,
                style: TextStyle(height: 1,fontSize: 12),
                decoration: InputDecoration(
                  errorStyle: TextStyle(color: Colors.red,fontSize: 12),
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock,size: 20,),
                  labelStyle: TextStyle(fontSize: 12,),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 1, color: Colors.orange)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 1, color: Colors.indigo)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 1, color: Colors.redAccent)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 1, color: Colors.redAccent)),
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
              Container(
                margin: EdgeInsets.only(top: 15,bottom: 15,left: 15),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 0.7,
                      child: Checkbox(value: isChecked.$, onChanged: (value){
                        setState(() {
                          isChecked.$=value!;
                        });
                      },
                      ),
                    ),
                    Text("Remember Me",style: TextStyle(fontSize: 12),),
                  ],
                ),

              ),
              ElevatedButton(
                  onPressed: () {
                    print(userData);
                    // _EmailController.clear();
                    setState(() {
                      if(_loginkey.currentState!.validate()){
                        is_log_in.$ = true;
                        is_log_in.save();
                        if(isChecked.$){
                          sharedEmail.$=_EmailController.text;
                          sharedPass.$=_PassController.text;
                          sharedEmail.save();
                          sharedPass.save();
                        }

                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Home()), (route) => false);
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
                    width: MediaQuery.sizeOf(context).width*0.5,
                    height: 40,
                    child: Text(
                      "LogIn",
                      style: TextStyle(
                          fontSize: 16,height: 2.5),
                      textAlign: TextAlign.center,
                    ),
                  )),
              TextButton(
                  onPressed: () {
                    _EmailController.clear();
                    _PassController.clear();
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PassReset()));

                  },
                  child: Text(
                    "Forgot Password!",
                    style: TextStyle(fontSize: 12),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account!"),
                  TextButton(onPressed: (){
                    _EmailController.clear();
                    _PassController.clear();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration()));
                  },
                child: Text("Register Here!")),
                ],
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
