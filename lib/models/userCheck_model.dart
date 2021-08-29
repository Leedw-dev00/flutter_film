class User_Check{
 String user_id;
 String user_pw;
 String skill;
 String user_email;
 String phone_number;
 String com_name;
 String com_no;
 String area1;
 String area2;
 String area3;
 String register_date;
 String profile_img;


 User_Check({this.user_id, this.user_pw,this.skill, this.user_email, this.phone_number, this.com_name, this.com_no, this.area1, this.area2, this.area3, this.register_date, this.profile_img});

 factory User_Check.fromJson(Map<String, dynamic> json){
   return User_Check(
     user_id: json['user_id'] as String,
     user_pw: json['user_pw'] as String,
     skill: json['skill'] as String,
     user_email: json['user_email'] as String,
     phone_number: json['phone_number'] as String,
     com_name: json['com_name'] as String,
     com_no: json['com_no'] as String,
     area1: json['area1'] as String,
     area2: json['area2'] as String,
     area3: json['area3'] as String,
     register_date: json['register_date'] as String,
     profile_img: json['profile_img'] as String,
   );
 }
}

