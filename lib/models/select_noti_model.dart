class Select_Noti{
  String notice_title;
  String notice_content;
  String notice_img;
  String status;
  String notice_registerDate;

  Select_Noti({this.notice_title, this.notice_content, this.notice_img, this.status, this.notice_registerDate});

  factory Select_Noti.fromJson(Map<String, dynamic> json){
    return Select_Noti(
      notice_title: json['notice_title'] as String,
      notice_content: json['notice_content'] as String,
      notice_img: json['notice_img'] as String,
      status: json['status'] as String,
      notice_registerDate: json['notice_registerDate'] as String,
    );
  }
}