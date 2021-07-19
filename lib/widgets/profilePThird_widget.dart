import 'package:flutter/material.dart';

class ProfileP_Third extends StatefulWidget{
  @override
  _ProfileP_ThirdState createState() => _ProfileP_ThirdState();
}

class _ProfileP_ThirdState extends State<ProfileP_Third>{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('리뷰', style:
                  TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0
                  ),
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Color(0xFFFEC107),),
                    SizedBox(width: 5.0,),
                    Text('4.7', style:
                    TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20.0
                    ),
                    ),
                  ],
                ),

              ]
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 0.3,
            child: Container(
              color: Colors.grey,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('이**', style:
                      TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0
                        ),
                      ),
                      SizedBox(width: 5.0,),
                      Icon(Icons.star, color: Color(0xFFFEC107), size: 13.0,),
                      SizedBox(width: 2.0,),
                      Text('5', style:
                        TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Text('더운데 고생 많으셨어요!\n워낙 친절하고 깔끔하게 시공해주셔서 감사합니다.', style:
                    TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                        fontSize: 13.0
                    ),
                  )

                ]
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 0.3,
            child: Container(
              color: Colors.grey,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('최**', style:
                      TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0
                      ),
                      ),
                      SizedBox(width: 5.0,),
                      Icon(Icons.star, color: Color(0xFFFEC107), size: 13.0,),
                      SizedBox(width: 2.0,),
                      Text('4', style:
                      TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 13.0
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Text('이쁘게 시공 해주셔서 감사합니다. 다음에 또 부탁드릴게요', style:
                  TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 13.0
                  ),
                  )

                ]
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 0.3,
            child: Container(
              color: Colors.grey,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('박**', style:
                      TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0
                      ),
                      ),
                      SizedBox(width: 5.0,),
                      Icon(Icons.star, color: Color(0xFFFEC107), size: 13.0,),
                      SizedBox(width: 2.0,),
                      Text('5', style:
                        TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Text('급하게 의뢰했는데 친절하고 빠르게 작업 해주셔서 감사합니다.\n덕분에 이쁘게 잘 했어요', style:
                    TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                        fontSize: 13.0
                    ),
                  )

                ]
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 0.3,
            child: Container(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );

  }
}