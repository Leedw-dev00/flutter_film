class Select_Estimate{
  String order_id;
  String user_id;
  String pro_id;
  String estimate_detail;
  String count;

  Select_Estimate({this.order_id, this.user_id, this.pro_id, this.estimate_detail, this.count});

  factory Select_Estimate.fromJson(Map<String, dynamic> json){
    return Select_Estimate(
      order_id: json['order_id'] as String,
      user_id: json['user_id'] as String,
      pro_id: json['pro_id'] as String,
      estimate_detail: json['estimate_detail'] as String,
      count: json['count'] as String,
    );
  }
}