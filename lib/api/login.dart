import 'dart:convert';

import 'package:http/http.dart';
import 'package:kodeeo_app/helper/shared_value_helper.dart';

class LoginApi{
  static const String _uri="https://premium-lychee-backendddd-production.up.railway.app/auth/login/";
  static Future<bool> userLogin(String email,String password) async {
    Uri url = Uri.parse(_uri);
try{
  Response response= await post(url,
  headers: {"Accept":"application/json"},
  body: {"email":email, "password":password,}
  );
  dynamic data = jsonDecode(response.body);
  if(data["LoggedIn"]){
    userToken.$=data["token"];
    userToken.save();
    return true;
  }else{
    return false;
  }

}catch(exception){
  print(exception);
  return false;
}
  }
}