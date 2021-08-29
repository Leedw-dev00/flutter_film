class Pro_User{
  String user_id;
  String skill;
  String com_name;
  String profile_img;


  Pro_User({this.user_id, this.skill, this.com_name, this.profile_img});

  factory Pro_User.fromJson(Map<String, dynamic> json){
    return Pro_User(
      user_id: json['user_id'] as String,
      skill: json['skill'] as String,
      com_name: json['com_name'] as String,
      profile_img: json['profile_img'] as String,
    );
  }
}