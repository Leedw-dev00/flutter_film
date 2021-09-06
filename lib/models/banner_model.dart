class Bbanner{
  String banner_id;
  String main_img;
  String main_text;




  Bbanner({this.banner_id, this.main_img, this.main_text});

  factory Bbanner.fromJson(Map<String, dynamic> json){
    return Bbanner(
      banner_id: json['banner_id'] as String,
      main_img: json['main_img'] as String,
      main_text: json['main_text'] as String,
    );
  }
}