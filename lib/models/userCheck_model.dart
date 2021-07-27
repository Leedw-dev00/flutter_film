class User_Check{
 String user_id;
 String user_pw;
 String user_email;
 String phone_number;
 String com_name;
 String com_no;


 User_Check({this.user_id, this.user_pw, this.user_email, this.phone_number, this.com_name, this.com_no});

 factory User_Check.fromJson(Map<String, dynamic> json){
   return User_Check(
     user_id: json['user_id'] as String,
     user_pw: json['user_pw'] as String,
     user_email: json['user_email'] as String,
     phone_number: json['phone_number'] as String,
     com_name: json['com_name'] as String,
     com_no: json['com_no'] as String,
   );
 }
}

