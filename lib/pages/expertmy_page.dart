import 'package:flutter/material.dart';
import 'package:flutter_film/pages/alarm_page.dart';
import 'package:flutter_film/pages/expertquest_page.dart';
import 'package:flutter_film/pages/point_page.dart';
import 'package:flutter_film/pages/portfolio_page.dart';
import 'package:flutter_film/pages/profile_page.dart';



class ExpertmyPage extends StatefulWidget{
  @override
  _ExpertmyPageState createState() => _ExpertmyPageState();
}

class _ExpertmyPageState extends State<ExpertmyPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('마이페이지', style:
        TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ),
        ),
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.black,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Color(0xFFf0f0f0),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: <Widget> [
                SizedBox(height:15),
                Container(
                  padding:const EdgeInsets.only(left:20,right: 20.0),
                  width: MediaQuery.of(context).size.width,
                  height:150,
                  color: Color(0xFFffffff),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/images/pro2.jpg',),
                            radius: 45,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '한솔 컴퍼니',
                            style: TextStyle(
                              fontSize:16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height:5),
                          Text('dgrab0501@naver.com'),
                        ],
                      ),
                      SizedBox(width:10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              icon: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 25.0,),
                              onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ProfilePage())
                                );
                              }
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height:15),

                Container(
                  padding:const EdgeInsets.only(left:20,right: 20.0),
                  width: MediaQuery.of(context).size.width,
                  height:50,
                  color: Color(0xFFffffff),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '안전거래',
                            style: TextStyle(
                              fontSize:16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ExpertquestPage())
                    );
                    print('success');
                  },

                  child: Container(
                    padding:const EdgeInsets.only(left:20,right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    height:50,
                    color: Color(0xFFffffff),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget> [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.list_alt_outlined, color: Color(0xFF707070), size: 20.0,),
                            SizedBox(width:10),
                            Text(
                              '작업내역',
                              style: TextStyle(
                                fontSize:15,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_forward_ios, color: Color(0xFF707070), size: 20.0,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PointPage())
                    );
                    print('success');
                  },

                  child: Container(
                    padding:const EdgeInsets.only(left:20,right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    height:50,
                    color: Color(0xFFffffff),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget> [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.attach_money, color: Color(0xFF707070), size: 20.0,),
                            SizedBox(width:10),
                            Text(
                              '포인트',
                              style: TextStyle(
                                fontSize:15,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_forward_ios, color: Color(0xFF707070), size: 20.0,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PortfolioPage())
                    );
                    print('success');
                  },

                  child: Container(
                    padding:const EdgeInsets.only(left:20,right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    height:50,
                    color: Color(0xFFffffff),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget> [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.pending_actions_outlined, color: Color(0xFF707070), size: 20.0,),
                            SizedBox(width:10),
                            Text(
                              '포트폴리오',
                              style: TextStyle(
                                fontSize:15,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_forward_ios, color: Color(0xFF707070), size: 20.0,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height:15),

                Container(
                  padding:const EdgeInsets.only(left:20,right: 20.0),
                  width: MediaQuery.of(context).size.width,
                  height:50,
                  color: Color(0xFFffffff),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '설정',
                            style: TextStyle(
                              fontSize:16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AlarmPage())
                    );
                    print('success');
                  },

                  child: Container(
                    padding:const EdgeInsets.only(left:20,right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    height:50,
                    color: Color(0xFFffffff),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget> [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.notifications_none_sharp, color: Colors.grey, size: 25.0,),
                            SizedBox(width:10),
                            Text(
                              '알림',
                              style: TextStyle(
                                fontSize:15,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_forward_ios, color: Color(0xFF707070), size: 20.0,),
                          ],
                        ),
                      ],
                    ),

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}