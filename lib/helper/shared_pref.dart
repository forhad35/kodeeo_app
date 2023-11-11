import 'package:shared_preferences/shared_preferences.dart';
class SharedPref{
  static Future<SharedPreferences> sharedPref= SharedPreferences.getInstance();
  static late SharedPreferences store;
  String isLogin="islogin";


  SharedPref(){
    init();
  }
//
  static  init() async {
     store= await SharedPreferences.getInstance();
    await store.setString('id', '101010');
    await store.setString('user', 'saju sun');
  }

   setData(String key,String value)  async {
    SharedPreferences prefs =await sharedPref;
    prefs.setString(key, value);
  }

  static getData(String key) {
   // SharedPreferences prefs= await SharedPreferences.getInstance();
       print(store.get(key).toString());
  }


}
