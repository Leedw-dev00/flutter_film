class Customer_Check{
  String user_id;
  String area;

  Customer_Check({this.user_id, this.area});

  factory Customer_Check.fromJson(Map<String, dynamic> json){
    return Customer_Check(
      user_id: json['user_id'] as String,
      area: json['area'] as String,
    );
  }
}