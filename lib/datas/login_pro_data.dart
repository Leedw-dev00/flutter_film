import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/userCheck_model.dart';

class Login_Data{
  static const ROOT = "https://www.d-grab.co.kr/film_login.php";
  static const _GET_LOGIN_ACTION= 'LOGIN';

  static Future<List<User_Check>> getLogin(String user_id, String user_pw) async {
    try{
      var map = Map<String, dynamic>();
      map['action'] = _GET_LOGIN_ACTION;
      map['user_id'] = user_id;
      map['user_pw'] = user_pw;
      final response = await http.post(Uri.parse(ROOT), body: map);
      print('getUser_Check Response: ${response.body}');
      if(200 == response.statusCode){
        List<User_Check> list = parseResponse(response.body);
        return list;
      }else{
        return List<User_Check>();
      }
    }catch (e){
      return List<User_Check>();
    }
  }
  static List<User_Check> parseResponse(String responseBody){
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<User_Check>((json) => User_Check.fromJson(json)).toList();
  }
}