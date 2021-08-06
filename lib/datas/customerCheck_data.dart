import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/customerCheck_model.dart';

class CustomerCheck_Data{
  static const ROOT = 'https://d-grab.co.kr/customer_check.php';
  static const _GET_CS_CHECK = 'CS_CHECK';

  static Future<List<Customer_Check>> getCustomerCheck(String user_id) async{
    try{
      var map = Map<String, dynamic>();
      map['action'] = _GET_CS_CHECK;
      map['user_id'] = user_id;

      final response = await http.post(Uri.parse(ROOT), body: map);
      print('getCustomer_Check Response: ${response.body}');
      if(200 == response.statusCode){
        List<Customer_Check> list =parseResponse(response.body);
        return list;
      }else{
        return List<Customer_Check>();
      }
    }catch(e){
      return List<Customer_Check>();
    }
  }
  static List<Customer_Check> parseResponse(String responseBody){
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Customer_Check>((json) => Customer_Check.fromJson(json)).toList();
  }
}