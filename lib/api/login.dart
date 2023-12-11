import 'dart:convert';

import 'package:http/http.dart';
import 'package:kodeeo_app/helper/shared_value_helper.dart';

class LoginApi{
  static const String _uri="https://premium-lychee-backendddd-production.up.railway.app/auth/login/";
  static Future<Map<String,dynamic>> userLogin(String email,String password) async {
    Uri url = Uri.parse(_uri);
try{
  Response response= await post(url,
  headers: {"Accept":"application/json"},
  body: {"email":email, "password":password,}
  );
  dynamic data = jsonDecode(response.body);
  if(response.statusCode >=200 && response.statusCode <= 299){
    userToken.$=data["token"];
    userToken.save();
    return {"status":true,"message":"login successful"};
  }else{
    return {"status":false,"message":data["message"]};
  }
}catch(exception){
  //print(exception);
  return {"status":false,"message":"A connection problem has occurs!"};
}
  }
}