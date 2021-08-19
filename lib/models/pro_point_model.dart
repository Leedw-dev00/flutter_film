class Pro_Point{
  String user_id;
  String point_info;
  String point_detail;
  String total_point;

  Pro_Point({this.user_id, this.point_info, this.point_detail, this.total_point});

  factory Pro_Point.fromJson(Map<String, dynamic> json){
    return Pro_Point(
      user_id: json['user_id'] as String,
      point_info: json['point_info'] as String,
      point_detail: json['point_detail'] as String,
      total_point: json['total_point'] as String,
    );
  }
}