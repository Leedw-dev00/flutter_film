class Pro_Select{
  String user_id;
  String introduce;
  String basic;
  String company;
  String img1;
  String img2;
  String img3;
  String img4;
  String img5;
  String com_name;

  Pro_Select({this.user_id, this.introduce, this.basic, this.company, this.img1, this.img2, this.img3, this.img4, this.img5, this.com_name});

  factory Pro_Select.fromJson(Map<String, dynamic> json){
    return Pro_Select(
      user_id: json['user_id'] as String,
      introduce: json['introduce'] as String,
      basic: json['basic'] as String,
      company: json['company'] as String,
      img1: json['img1'] as String,
      img2: json['img2'] as String,
      img3: json['img3'] as String,
      img4: json['img4'] as String,
      img5: json['img5'] as String,
      com_name: json['com_name'] as String,
    );
  }
}