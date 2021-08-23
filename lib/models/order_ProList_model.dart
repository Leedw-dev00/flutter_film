class Order_ProList{
  String order_id;
  String user_id;
  String pro_id;
  String estimate_date;
  String estimate_detail;
  String skill;
  String com_name;
  String area1;
  String profile_img;

  Order_ProList({this.order_id, this.user_id, this.pro_id, this.estimate_date, this.estimate_detail, this.skill, this.com_name, this.area1, this.profile_img});

  factory Order_ProList.fromJson(Map<String, dynamic> json){
    return Order_ProList(
      order_id: json['order_id'] as String,
      user_id: json['user_id'] as String,
      pro_id: json['pro_id'] as String,
      estimate_date: json['estimate_date'] as String,
      estimate_detail: json['estimate_detail'] as String,
      skill: json['skill'] as String,
      com_name: json['com_name'] as String,
      area1: json['area1'] as String,
      profile_img: json['profile_img'] as String,
    );
  }
}