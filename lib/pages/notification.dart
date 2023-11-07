import 'package:flutter/material.dart';
import 'package:kodeeo_app/core/string_methods.dart';
import 'package:kodeeo_app/data/model/notification_data.dart';

@immutable
class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState()=>_State();
}
class _State extends State<NotificationPage>{
  List<NotificationModel> items = NotificationData.list;
  bool flag=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title:const Text("Notice"),centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context,index){
                return Card(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListTile(
                        dense: false,
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Text((index+1).toString()),
                        ),
                        title: Text(items[index].title),
                        subtitle: items[index].flag?null:Text(getFixedString(items[index].description, 45)),
                        trailing: items[index].flag?const Icon(Icons.keyboard_arrow_down_sharp,color: Colors.grey,):const Icon(Icons.keyboard_arrow_right,color: Colors.grey,),
                        minVerticalPadding: 10,
                        selectedColor: Colors.cyan,
                        onTap: (){
                          setState(() {
                            items[index].flag =!items[index].flag;

                          });
                        },
                      ),
                      Visibility(
                        visible: items[index].flag,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(items[index].description,textAlign: TextAlign.justify,style:const TextStyle(color: Colors.blueGrey),),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
