import 'package:flutter/material.dart';
import 'package:flutter_film/pages/login_page.dart';
import 'package:flutter_film/pages/my_page.dart';
import 'package:flutter_film/pages/noti_page.dart';
import 'package:flutter_film/pages/orderList_page.dart';
import 'package:flutter_film/pages/point_page.dart';
import 'package:flutter_film/pages/profileP_page.dart';
import 'package:flutter_film/widgets/banner_widget.dart';
import 'package:get/get.dart';
import 'package:kakao_flutter_sdk/all.dart';



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
    _initTexts();
    super.initState();
  }

  _initTexts() async{
    final User user = await UserApi.instance.me();

    setState(() {
      user_id = user.kakaoAccount.email;
      user_name = user.kakaoAccount.legalName;
      user_birth = user.kakaoAccount.birthyear;
      _default_Image = user.kakaoAccount.profile.isDefaultImage;
      profile_image = user.kakaoAccount.profile.profileImageUrl;

    });
  }
  String user_id = 'None';
  String user_name = 'None';
  String user_birth = 'None';
  String profile_image = 'None';
  bool _default_Image = true;

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
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.dstATop
                      ),
                      image: AssetImage('assets/images/back.png'),
                    )
                ),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset('assets/images/rec.png', fit: BoxFit.cover,),
                    ),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          children: <Widget>[
                            Spacer(),
                            SizedBox(height: 30.0,),
                            Text('인테리어 전문가로 배정 해드립니다', style:
                            TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700
                            ),
                            ),
                            Text('한 번의 견적으로 5명의 전문가를 추천해드려요', style:
                            TextStyle(
                                fontSize: 12.0,
                                color: Colors.black54,
                                fontWeight: FontWeight.w700
                            ),
                            ),
                            SizedBox(height: 25.0,),
                            ButtonTheme(
                              minWidth: 120,
                              height: 35.0,
                              child: RaisedButton(
                                  color: Color(0xFF398FE2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3.0),
                                  ),
                                  child: Text('견적요청', style:
                                  TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500
                                  ),
                                  ),
                                  onPressed: (){
                                    print('견적 보기');
                                    if(_isLogin == 'true'){
                                      Get.toNamed('/order/true?id=$_userId');
                                    }else{
                                      Get.snackbar('로그인 실패', '로그인 후 이용해주세요');
                                    }

                                  }
                              ),
                            ),
                            Spacer(),
                          ],
                        )
                    ),

                  ],
                ),
              ),
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
                    ),
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
          child:
          _isLogin == 'true'
              ?
          ListView(
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
              ),
            ],
          )
              :
          ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Spacer(),
                          Text('로그인해주세요', style:
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  height: Get.height*0.4,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          child: Text('로그인'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue
                          ),
                          onPressed: (){
                            Get.to(LoginPage());
                          },
                        )
                      ]
                  )
              ),
            ],
          ),
        )
      ),
    );
  }
}