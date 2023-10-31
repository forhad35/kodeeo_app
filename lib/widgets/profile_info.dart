import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
   ProfileInfo({super.key});
String  _name = "Jon Duo";
var _email="example@gmail.com";
var _phone = "01752136445";
var _device = "Laptop";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Card(
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Name : $_name",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF333664),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            child: Text(
              "Email : $_email",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            child: Text(
              "Phone : $_phone",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            child: Text(
              "Device : $_device ",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
