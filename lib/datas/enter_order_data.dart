import 'package:http/http.dart' as http;

class Order_Data{
  static const ROOT = 'https://d-grab.co.kr/film_enter_order.php';
  static const _ADD_ORDER_ACTION = 'ADD_ORDER';

  static Future<String> addOrder(String user_id, String service_date, String skill, String service_area, String service_type, String service_size, String service_detail) async{
    try{
      var map = Map<String, dynamic>();
      map['action'] = _ADD_ORDER_ACTION;
      map['user_id'] = user_id;
      map['service_date'] = service_date;
      map['skill'] = skill;
      map['service_area'] = service_area;
      map['service_type'] = service_type;
      map['service_size'] = service_size;
      map['service_detail'] = service_detail;
      final response = await http.post(Uri.parse(ROOT), body: map);
      print('addOrder Response: ${response.body}');
      if(200 == response.body){
        return response.body;
      }else{
        return "error";
      }
    }catch(e){
      return "error";
    }
  }
}