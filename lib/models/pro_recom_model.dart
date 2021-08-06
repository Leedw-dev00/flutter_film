class Pro_User{
  String user_id;
  String com_name;


  Pro_User({this.user_id, this.com_name});

  factory Pro_User.fromJson(Map<String, dynamic> json){
    return Pro_User(
      user_id: json['user_id'] as String,
      com_name: json['com_name'] as String,
    );
  }
}