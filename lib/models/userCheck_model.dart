class User_Check{
 String user_id;

 User_Check({this.user_id});

 factory User_Check.fromJson(Map<String, dynamic> json){
   return User_Check(
     user_id: json['user_id'] as String,
   );
 }
}

