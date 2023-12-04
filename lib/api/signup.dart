import 'dart:convert';

import 'package:http/http.dart';
import 'package:kodeeo_app/helper/shared_value_helper.dart';

class SignupApi{
  static const String _uri="https://premium-lychee-backendddd-production.up.railway.app/auth/signup";
  static  userSignup(String name,String email,String password) async {
    Uri url = Uri.parse(_uri);
    try{
      Response response= await post(url,
          headers: {"Accept":"application/json"},
          body: {"name":name,"email":email, "password":password,}
      );
      dynamic data = jsonDecode(response.body);


    }catch(exception){
      print(exception);
      return false;
    }
  }
}