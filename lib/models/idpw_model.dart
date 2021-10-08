class SearchIDPW{
  String user_id;
  String user_pw;

  SearchIDPW({this.user_id, this.user_pw});

  factory SearchIDPW.fromJson(Map<String, dynamic> json){
    return SearchIDPW(
      user_id: json['user_id'] as String,
      user_pw: json['user_pw'] as String,
    );
  }
}