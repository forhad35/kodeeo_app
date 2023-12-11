import 'dart:convert';
import 'package:http/http.dart';

class SignupApi{
  static const String _uri="https://premium-lychee-backendddd-production.up.railway.app/auth/signup/";
  static Future<Map> userSignup(String name,String email,String password) async {
    Uri url = Uri.parse(_uri);
    try{
      Response response= await post(url,
          headers: {"Accept":"application/json"},
          body: {"name":name,"email":email, "password":password,}
      );
      dynamic data = jsonDecode(response.body);
      if(response.statusCode >=200 && response.statusCode <= 299){
        return {"status":true,"message":"Registration successful"};
      }else{
        return {"status":false,"message":"${data['errors']['email']}"};
      }
    }catch(exception){
     // print(exception);
      return {"status":false,"message":"A connection problem has occurs! "};
    }
  }
}