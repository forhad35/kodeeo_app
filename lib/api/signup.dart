import 'dart:convert';
import 'package:http/http.dart';

class SignupApi{
  static const String _uri="https://premium-lychee-backendddd-production.up.railway.app/auth/signup/";
  static Future<bool> userSignup(String name,String email,String password) async {
    Uri url = Uri.parse(_uri);
    try{
      Response response= await post(url,
          headers: {"Accept":"application/json"},
          body: {"name":name,"email":email, "password":password,}
      );
      dynamic data = jsonDecode(response.body);
      if(data["sucess"]){
        return true;
      }else{
        return false;
      }
    }catch(exception){
     // print(exception);
      return false;
    }
  }
}