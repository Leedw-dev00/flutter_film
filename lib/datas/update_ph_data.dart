import 'package:http/http.dart' as http;

class Update_PH_Data{
  static const ROOT = "https://d-grab.co.kr/film_ph_update.php";
  static const UPDATE_PH_ACTION = "UPDATE_PH";

  static Future<String> updatePH(String user_id, String phone_number) async{
    try{
      var map = Map<String, dynamic>();
      map['action'] = UPDATE_PH_ACTION;
      map['user_id'] = user_id;
      map['phone_number'] = phone_number;

      final response = await http.post(Uri.parse(ROOT), body: map);
      print('update user phone number Response: ${response.body}');
      if(200 == response.statusCode){
        print('1');
        return response.body;
      }else{
        print('2');
        return "error";
      }
    }catch(e){
      print('3');
      return "error";
    }
  }
}