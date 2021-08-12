class Pro_Profile{
  String user_id;
  String skill;
  String com_name;
  String area1;
  String area2;
  String area3;

  Pro_Profile({this.user_id, this.skill, this.com_name, this.area1, this.area2, this.area3});

  factory Pro_Profile.fromJson(Map<String, dynamic> json){
    return Pro_Profile(
      user_id: json['user_id'] as String,
      skill: json['skill'] as String,
      com_name: json['com_name'] as String,
      area1: json['area1'] as String,
      area2: json['area2'] as String,
      area3: json['area3'] as String,
    );
  }
}