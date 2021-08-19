import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/pro_point_model.dart';

class ProPoint_Data{
  static const ROOT = 'https://www.d-grab.co.kr/film_pro_point.php';
  static const _GET_POINT_ACTION = 'GET_POINT';

  static Future<List<Pro_Point>> getProPoint(String user_id) async{
    try{
      var map = Map<String, dynamic>();
      map['action'] = _GET_POINT_ACTION;
      map['user_id'] = user_id;
      final response = await http.post(Uri.parse(ROOT), body: map);
      print('Pro Point Reseponse: ${response.body}');
      if(200 == response.statusCode){
        List<Pro_Point> list = parseResponse(response.body);
        return list;
      }else{
        return List<Pro_Point>();
      }
    }catch(e){
      return List<Pro_Point>();
    }
  }
  static List<Pro_Point> parseResponse(String responseBody){
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Pro_Point>((json) => Pro_Point.fromJson(json)).toList();
  }
}