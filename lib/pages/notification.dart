import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kodeeo_app/core/string_methods.dart';
import 'package:kodeeo_app/data/model/notification_data.dart';

import '../core/string_methods.dart';
import '../data/model/notification_data.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState()=>_State();
}
class _State extends State<NotificationPage>{
  List<NotificationModel> items = NotificationData.list;
  bool flag=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Notice"),centerTitle: true,),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context,index){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text((index+1).toString()),
                  ),
                  title: Text(items[index].title),
                  subtitle: Text(getFixedString(items[index].description, 45)),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.grey,),
                  minVerticalPadding: 10,
                  selectedColor: Colors.cyan,
                  onTap: (){
                    setState(() {
                      items[index].flag =!items[index].flag;
                      // showDialog<void>(
                      //   context: context,
                      //   barrierDismissible: true,
                      //   // false = user must tap button, true = tap outside dialog
                      //   builder: (BuildContext dialogContext) {
                      //     return AlertDialog(
                      //      clipBehavior: Clip.antiAlias,
                      //       elevation: 1,
                      //       backgroundColor: Colors.white,
                      //       title: Text(items[index].title),
                      //       content: Text(items[index].description),
                      //       actions: <Widget>[
                      //         TextButton(
                      //           child: Text('Close'),
                      //           onPressed: () {
                      //             Navigator.of(dialogContext)
                      //                 .pop(); // Dismiss alert dialog
                      //           },
                      //         ),
                      //       ],
                      //     );
                      //   },
                      // );
                    });
                  },
                ),
                Visibility(
                  visible: items[index].flag,
                  child: Container(
                    child: Text(items[index].description,textAlign: TextAlign.center,),
                  ),
                )

              ],
            );
          }),
    );
  }
}
