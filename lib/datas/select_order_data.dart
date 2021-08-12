import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/select_order_model.dart';

class Order_Select_Data{
  static const ROOT = "https://www.d-grab.co.kr/film_order_select.php";
  static const _SELECT_ORDER_ACTION = "ORDER_SELECT";

  static Future<List<Select_Order>> getOrderSelect(String user_id, String skill) async{
    try{
      var map = Map<String, dynamic>();
      map['action'] = _SELECT_ORDER_ACTION;
      map['user_id'] = user_id;
      map['skill'] = skill;
      final response = await http.post(Uri.parse(ROOT), body: map);
      print('Select_Order: ${response.body}');
      if(200 == response.statusCode){
        List<Select_Order> list = parseResponse(response.body);
        return list;
      }else{
        return List<Select_Order>();
      }
    }catch(e){
      return List<Select_Order>();
    }
  }
  static List<Select_Order> parseResponse(String responseBody){
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Select_Order>((json) => Select_Order.fromJosn(json)).toList();
  }
}
