import 'package:flutter/material.dart';
import 'package:flutter_film/pages/login_page.dart';
import 'package:flutter_film/pages/my_page.dart';
import 'package:flutter_film/pages/noti_page.dart';
import 'package:flutter_film/pages/orderList_page.dart';
import 'package:flutter_film/pages/point_page.dart';
import 'package:flutter_film/pages/profileP_page.dart';
import 'package:flutter_film/widgets/banner_widget.dart';
import 'package:get/get.dart';



class MainPage extends StatefulWidget{
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{

  String _isLogin;
  String _userId;

  @override
  void dispose(){
    super.dispose();
  }

  @override
  void initState(){
    _isLogin = Get.parameters['param'];
    _userId = Get.parameters['id'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Image.asset('assets/images/logo.jpeg', width: 170.0, fit: BoxFit.cover,),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none_sharp, color: Colors.grey, size: 25.0,),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotiPage())
              );
            }
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Home_Banner(),
              SizedBox(height: 20.0,),
              Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0, bottom: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 30.0,
                      height: 3.0,
                      color: Color(0xFF398FE2),
                    ),
                    Text('전문가 추천', style:
                      TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13.0
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Get.to(ProfilePPage());
                      },
                      child: Container(
                        color: Color(0xFFF0F0F0),
                        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/images/pro.jpg',),
                                  radius: 20,
                                ),
                                SizedBox(width: 20.0,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('인테리어', style: TextStyle(fontSize: 10.0,),),
                                    Text('디올디 컴퍼티', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700),),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.star, color: Color(0xFFFEC107), size: 13.0,),
                                        Text('4.7', style: TextStyle(fontSize: 12.0),)
                                      ],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text('[실크벽지]', style: TextStyle(fontSize: 10.0),),
                                    Text('친환경 벽지 시공전문', style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500),)
                                  ],
                                ),

                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),

                    Container(
                      color: Color(0xFFF0F0F0),
                      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/images/pro2.jpg',),
                                radius: 20,
                              ),
                              SizedBox(width: 20.0,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('인테리어', style: TextStyle(fontSize: 10.0,),),
                                  Text('한솔 컴퍼티', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700),),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.star, color: Color(0xFFFEC107), size: 13.0,),
                                      Text('4.2', style: TextStyle(fontSize: 12.0),)
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('[실크벽지]', style: TextStyle(fontSize: 10.0),),
                                  Text('친환경 벽지 시공전문', style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500),)
                                ],
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      color: Color(0xFFF0F0F0),
                      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/images/pro3.jpg',),
                                radius: 20,
                              ),
                              SizedBox(width: 20.0,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('인테리어', style: TextStyle(fontSize: 10.0,),),
                                  Text('대신 컴퍼티', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700),),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.star, color: Color(0xFFFEC107), size: 13.0,),
                                      Text('4.6', style: TextStyle(fontSize: 12.0),)
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('[실크벽지]', style: TextStyle(fontSize: 10.0),),
                                  Text('친환경 벽지 시공전문', style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500),)
                                ],
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      color: Color(0xFFF0F0F0),
                      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/images/pro4.png',),
                                radius: 20,
                              ),
                              SizedBox(width: 20.0,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('인테리어', style: TextStyle(fontSize: 10.0,),),
                                  Text('성운 컴퍼티', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700),),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.star, color: Color(0xFFFEC107), size: 13.0,),
                                      Text('4.7', style: TextStyle(fontSize: 12.0),)
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('[실크벽지]', style: TextStyle(fontSize: 10.0),),
                                  Text('친환경 벽지 시공전문', style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500),)
                                ],
                              ),

                            ],
                          )
                        ],
                      ),
                    ),

                    SizedBox(height: 10.0,),
                    Container(
                      color: Color(0xFFF0F0F0),
                      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/images/pro5.png',),
                                radius: 20,
                              ),
                              SizedBox(width: 20.0,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('인테리어', style: TextStyle(fontSize: 10.0,),),
                                  Text('우원건업', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700),),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.star, color: Color(0xFFFEC107), size: 13.0,),
                                      Text('4.7', style: TextStyle(fontSize: 12.0),)
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('[실크벽지]', style: TextStyle(fontSize: 10.0),),
                                  Text('친환경 벽지 시공전문', style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500),)
                                ],
                              ),

                            ],
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 40.0),
              Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0, bottom: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 30.0,
                      height: 3.0,
                      color: Color(0xFF398FE2),
                    ),
                    Text('공간 인텐리어', style:
                    TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13.0
                    ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 80.0,
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Color(0xFFd4d4d4))
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      height: 80.0,
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Color(0xFFd4d4d4))
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      height: 80.0,
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Color(0xFFd4d4d4))
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80.0,),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child:  ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Container(
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 10.0,),
                      Column(
                        children: <Widget>[
                          Spacer(),
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/images/pro.jpg',),
                            radius: 35,
                          ),
                          Spacer(),
                        ],
                      ),
                      SizedBox(width: 25.0,),
                      Column(
                        children: <Widget>[
                          Spacer(),
                          _isLogin == 'false'
                          ?
                          Text('로그인해주세요', style:
                            TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                            ),
                          )
                          :
                          Text('$_userId 님', style:
                            TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(height: 5.0,),
                          Text('안녕하세요', style:
                            TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              _userId == 'null'
              ?
              Container(
                height: Get.height*0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                    '로그인 후 이용 가능합니다',
                      style: TextStyle(
                        fontSize:16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ]
                )
              )
              :
              Container(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text('받은 견적서', style:
                      TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold
                      ),
                      ),
                      onTap: () {
                        Get.to(OrderListPage());
                      },
                    ),
                    ListTile(
                      title: Text('포인트', style:
                      TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold
                      ),
                      ),
                      onTap: () {
                        Get.to(PointPage());
                      },
                    ),
                    ListTile(
                      title: Text('마이페이지', style:
                      TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold
                      ),
                      ),
                      onTap: () {
                        Get.toNamed('/myPage/$_isLogin?id=$_userId');
                      },
                    ),
                    SizedBox(height: 100.0,),
                  ],
                ),
              ),

              _isLogin == 'false'
              ?
              Row(
                children: <Widget>[
                  Spacer(),
                  TextButton(
                    child: Text('로그인'),
                    onPressed: (){
                      Get.to(LoginPage());
                    },
                  )
                ],
              )
              :
              Row(
                children: <Widget>[
                  Spacer(),
                  TextButton(
                    child: Text('로그아웃'),
                    onPressed: (){
                      print('로그아웃');
                      setState(() {
                        _isLogin = 'false';
                        _userId = 'null';
                      });
                    },
                  )
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}