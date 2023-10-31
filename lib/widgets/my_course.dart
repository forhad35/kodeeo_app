import 'package:flutter/material.dart';

class MyCourse extends StatefulWidget {
  const MyCourse({super.key});

  @override
  State<MyCourse> createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: 1,
        itemBuilder: (BuildContext context, int index){
      return Card(
       child: Container(
          padding: EdgeInsets.all(10),
          width: 300,
          // color: Colors.blue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(children: [
                Text(
                  "INSTRUCTOR NAME : ",
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  "Mustafizur Rahman",
                  style: TextStyle(fontSize: 14),
                ),
              ]),
              Row(children: [
                Text(
                  "COURSE NAME : ",
                  style: TextStyle(fontSize: 14),
                ),
                Column(children: [
                  Text(
                    "Advance Laravel",
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                  )
                ]),
              ]),
              Row(children: [
                Text(
                  "COURSE PRICE : ",
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  "12000.00",
                  style: TextStyle(fontSize: 14),
                ),
              ]),
              Row(children: [
                Text(
                  "DUE AMOUNT :  ",
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  "7000.00",
                  style: TextStyle(fontSize: 14),
                ),
              ]),
              Row(children: [
                Text(
                  "PAID STATUS :  ",
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  "Admission",
                  style: TextStyle(fontSize: 14),
                ),
              ]),
              Row(children: [
                Text(
                  "CERTIFICATE STATUS  :  ",
                  style: TextStyle(fontSize: 14),
                ),
              ]),
              Row(children: [
                Text(
                  "CLAIM CERTIFICATE  :  ",
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  "Claime Certificate",
                  style: TextStyle(fontSize: 14),
                ),
              ]),
            ],
          ),
        ),
      );
    });
  }
}
