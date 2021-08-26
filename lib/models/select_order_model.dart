class Select_Order{
  String user_id;
  String service_date;
  String skill;
  String service_area;
  String service_type;
  String service_size;
  String service_detail;
  String order_type;
  String order_date;
  String pro_user_id;
  String com_name;
  String pro_skill;
  String area1;

  Select_Order({this.user_id, this.service_date, this.skill, this.service_area, this.service_type, this.service_size, this.service_detail, this.order_type, this.order_date, this.pro_user_id, this.com_name, this.pro_skill, this.area1});

  factory Select_Order.fromJosn(Map<String, dynamic> json){
    return Select_Order(
      user_id: json['user_id'] as String,
      service_date: json['service_date'] as String,
      skill: json['skill'] as String,
      service_area: json['service_area'] as String,
      service_type: json['service_type'] as String,
      service_size: json['service_size'] as String,
      service_detail: json['service_detail'] as String,
      order_type: json['order_type'] as String,
      order_date: json['order_date'] as String,
      pro_user_id: json['pro_user_id'] as String,
      com_name: json['com_name'] as String,
      pro_skill: json['pro_skill'] as String,
      area1: json['area1'] as String,
    );
  }
}