import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/pro_recom_model.dart';

class ProUser_Data{
  static const ROOT = 'https://d-grab.co.kr/pro_recom.php';
  static const _GET_PRO_RECOM = 'PRO_RECOM';

  static Future<List<Pro_User>> getProRecom() async {
    try{
      var map = Map<String, dynamic>();
      map['action'] = _GET_PRO_RECOM;
      final response = await http.post(Uri.parse(ROOT), body: map);
      print('getProRecom Response: ${response.body}');
      if(200 == response.statusCode){
        List<Pro_User> list = parseResponse(response.body);
        return list;
      }else{
        return List<Pro_User>();
      }
    }catch(e){
      return List<Pro_User>();
    }
  }
  static List<Pro_User> parseResponse(String responseBody){
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Pro_User>((json) => Pro_User.fromJson(json)).toList();
  }
}