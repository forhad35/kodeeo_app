import 'package:shared_preferences/shared_preferences.dart';
class SharedPref{
  static Future<SharedPreferences> pref= SharedPreferences.getInstance();
  static late SharedPreferences prefs;
  SharedPref(){
    init();
  }
//
  static  init() async {
     prefs= await SharedPreferences.getInstance();
    await prefs.setString('id', '101010');
    await prefs.setString('user', 'saju sun');
  }

   setData(String key,String value)  async {
    SharedPreferences prefs =await pref;
    prefs.setString(key, value);
  }

  static getData(String key) {
   // SharedPreferences prefs= await SharedPreferences.getInstance();
       print(prefs.get(key).toString());
  }


}
