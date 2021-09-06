class Ad{
  String ad_id;
  String ad_img;
  String ad_txt;




  Ad({this.ad_id, this.ad_img, this.ad_txt});

  factory Ad.fromJson(Map<String, dynamic> json){
    return Ad(
      ad_id: json['ad_id'] as String,
      ad_img: json['ad_img'] as String,
      ad_txt: json['ad_txt'] as String,
    );
  }
}