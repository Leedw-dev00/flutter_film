import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/ad_model.dart';


class Ad_Data{
  static const ROOT = 'https://d-grab.co.kr/film_ad.php';
  static const _GET_AD_ACTION = 'GET_AD';

  static Future<List<Ad>> getAd() async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = _GET_AD_ACTION;
      final response = await http.post(Uri.parse(ROOT), body: map);
      print('getAD Response: ${response.body}');
      if (200 == response.statusCode) {
        List<Ad> list = parseResponse(response.body);
        return list;
      } else {
        return List<Ad>();
      }
    } catch (e) {
      return List<Ad>();
    }
  }
  static List<Ad> parseResponse(String responseBody){
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Ad>((json) => Ad.fromJson(json)).toList();
  }
}
