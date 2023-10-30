import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  var inputData =  [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network("https://www.kodeeo.com/images/kodeeo%20(1).webp",height: 200,width: 150,),
              // ----------------------------------Name button---------------------------
              Container(
                margin: EdgeInsets.all(10),
                height: 54,
                child: TextField(
                  onChanged: (value) {
                    inputData[0] = value.toString();
                  },
                  decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Your Name",
                    labelStyle:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 2, color: Colors.orange)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 2, color: Colors.grey)),
                  ),
                ),
              ),
              // ----------------------------------Email button---------------------------

              Container(
                margin: EdgeInsets.all(10),
                height: 54,
                child: TextField(
                  onChanged: (value) {
                    inputData[0] = value.toString();
                  },
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "example@gmail.com",
                    labelStyle:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 2, color: Colors.orange)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 2, color: Colors.grey)),
                  ),
                ),
              ),
              // ----------------------------------Phone button---------------------------

              Container(
                margin: EdgeInsets.all(10),
                height: 54,
                child: TextField(
                  onChanged: (value) {
                    inputData[0] = value.toString();
                  },
                  decoration: InputDecoration(
                    labelText: "Phone",
                    hintText: "017xxxxxxx",
                    labelStyle:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 2, color: Colors.orange)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 2, color: Colors.grey)),
                  ),
                ),
              ),
              // ----------------------------------Reference name button---------------------------

              Container(
                margin: EdgeInsets.all(10),
                height: 54,
                child: TextField(
                  onChanged: (value) {
                    inputData[0] = value.toString();
                  },
                  decoration: InputDecoration(
                    labelText: "Reference Name(optional)",
                    hintText: "Reference Name",
                    labelStyle:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 2, color: Colors.orange)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 2, color: Colors.grey)),
                  ),
                ),
              ),

              // ----------------------------------Institute button---------------------------
              Container(
                margin: EdgeInsets.all(10),
                height: 54,
                child: TextField(
                  onChanged: (value) {
                    inputData[0] = value.toString();
                  },
                  decoration: InputDecoration(
                    labelText: "Institute (optional)",
                    hintText: "IUBAT",
                    labelStyle:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 2, color: Colors.orange)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 2, color: Colors.grey)),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 15,bottom: 15),
                child: ElevatedButton(
                    onPressed: () {},
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
              ),

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
    );
  }
}
