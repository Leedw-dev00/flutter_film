class Select_Rating{
  String pro_id;
  String user_id;
  String rating;
  String review;
  String review_date;

  Select_Rating({this.pro_id, this.user_id, this.rating, this.review, this.review_date});

  factory Select_Rating.fromJson(Map<String, dynamic> json){
    return Select_Rating(
      pro_id: json['pro_id'] as String,
      user_id: json['user_id'] as String,
      rating: json['rating'] as String,
      review: json['review'] as String,
      review_date: json['review_date'] as String,
    );
  }
}