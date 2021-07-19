import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget{
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('프로필 설정', style:
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              SizedBox(height:15),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Spacer(),
                    Stack(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget> [
                        Positioned(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          child:
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/images/pro3.jpg',),
                            radius: 75,
                          ),
                        ),
                        Positioned(
                            bottom: 1,
                            right:1,
                            //mainAxisAlignment: MainAxisAlignment.center,
                            child:
                            IconButton(
                              icon: Icon(Icons.camera_alt, size:30.0, color: Colors.black,),
                              onPressed: (){print('프로필 이미지 변경');},
                            )
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(height:15),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage())
                  );
                  print('success');
                },
                child: Container(
                  padding:const EdgeInsets.only(left:20,right: 20.0),
                  height:100,
                  color: Color(0xFFffffff),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '이름',
                            style: TextStyle(
                              fontSize:16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height:5),
                          Text(
                            '홍길동',
                            style: TextStyle(
                              fontSize:16,

                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 25.0,),
                    ],
                  ),
                ),
              ),
              SizedBox(height:5),

              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage())
                  );
                  print('success');
                },

                child: Container(
                  padding:const EdgeInsets.only(left:20,right: 20.0),
                  height:100,
                  color: Color(0xFFffffff),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '이메일',
                            style: TextStyle(
                              fontSize:16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height:5),
                          Text(
                            'dgrab0501@naver.com',
                            style: TextStyle(
                              fontSize:16,

                            ),
                          ),
                        ],
                      ),

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
              ),

              SizedBox(height:5),

              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage())
                  );
                  print('success');
                },

                child: Container(
                  padding:const EdgeInsets.only(left:20,right: 20.0),
                  height:100,
                  color: Color(0xFFffffff),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '비밀번호',
                            style: TextStyle(
                              fontSize:16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height:5),
                          Text(
                            '●●●●●●●●●',
                            style: TextStyle(
                              fontSize:16,

                            ),
                          ),
                        ],
                      ),

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
              ),
              SizedBox(height:5),

              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage())
                  );
                  print('success');
                },

                child: Container(
                  padding:const EdgeInsets.only(left:20,right: 20.0),
                  height:100,
                  color: Color(0xFFffffff),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '휴대전화',
                            style: TextStyle(
                              fontSize:16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height:5),
                          Text(
                            '010-5555-4444',
                            style: TextStyle(
                              fontSize:16,

                            ),
                          ),
                        ],
                      ),

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
              ),
              SizedBox(height:50),

              GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage())
                    );
                    print('success');
                  },

                  child: Container(
                    padding:const EdgeInsets.only(left:20,right: 20.0),
                    height:100,
                    color: Color(0xFFffffff),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget> [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '계정탈퇴',
                              style: TextStyle(
                                fontSize:16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height:5),
                          ],
                        ),

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
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}