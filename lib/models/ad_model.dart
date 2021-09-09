class Ad{
  String ad_id;
  String ad_img;
  String ad_text;
  String detail_img;
  String detail_txt;
  String register_date;




  Ad({this.ad_id, this.ad_img, this.ad_text, this.detail_img, this.detail_txt, this.register_date});

  factory Ad.fromJson(Map<String, dynamic> json){
    return Ad(
      ad_id: json['ad_id'] as String,
      ad_img: json['ad_img'] as String,
      ad_text: json['ad_text'] as String,
      detail_img: json['detail_img'] as String,
      detail_txt: json['detail_txt'] as String,
      register_date: json['register_date'] as String,
    );
  }
}