class Customer_List{
  String user_id;
  String service_date;
  String skill;
  String service_area;
  String service_type;
  String service_size;
  String service_detail;
  String order_date;
  String status;

  Customer_List({this.user_id, this.service_date, this.skill, this.service_area, this.service_type, this.service_size, this.service_detail, this.order_date, this.status});

  factory Customer_List.fromJson(Map<String, dynamic> json){
    return Customer_List(
      user_id: json['user_id'] as String,
      service_date: json['service_date'] as String,
      skill: json['skill'] as String,
      service_area: json['service_area'] as String,
      service_type: json['service_type'] as String,
      service_size: json['service_size'] as String,
      service_detail: json['service_detail'] as String,
      order_date: json['order_date'] as String,
      status: json['status'] as String,
    );
  }
}