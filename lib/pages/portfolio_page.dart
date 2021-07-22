import 'package:flutter/material.dart';


class PortfolioPage extends StatefulWidget{
  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('포트폴리오', style:
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              SizedBox(height:15),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0),
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
                            backgroundImage: AssetImage('assets/images/pro2.jpg',),
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
                      MaterialPageRoute(builder: (context) => PortfolioPage())
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
                            '한솔 컴퍼니',
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
              SizedBox(
                height:20,
              ),

              Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: Column(
                    children: <Widget>[
                      Text(
                        "전문가 정보",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,

                        ),

                      ),
                    ]),
              ),
              SizedBox(
                height:20,
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
                            '소개',
                            style: TextStyle(
                              fontSize:16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height:5),
                          Text(
                            '안녕하세요~ 한솔컴퍼니 입니다.',
                            style: TextStyle(
                              fontSize:16,

                            ),
                          ),
                          Text(
                            '합리적인 가격으로 시공하겠습니다',
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
                                    MaterialPageRoute(builder: (context) => PortfolioPage())
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
                      MaterialPageRoute(builder: (context) => PortfolioPage())
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
                            '기본정보',
                            style: TextStyle(
                              fontSize:16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height:5),
                          Text(
                            '25회 고용됨 / 서울 강동구 · · ·',
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
                                    MaterialPageRoute(builder: (context) => PortfolioPage())
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
                      MaterialPageRoute(builder: (context) => PortfolioPage())
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
                            '추가정보',
                            style: TextStyle(
                              fontSize:16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height:5),
                          Text(
                            '경력 15년 / 직원 5명  · · ·',
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
                                    MaterialPageRoute(builder: (context) => PortfolioPage())
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
                      MaterialPageRoute(builder: (context) => PortfolioPage())
                  );
                  print('success');
                },

                child: Container(
                  padding:const EdgeInsets.only(left:20,right: 20.0),
                  height:170,
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
                            '사진 / 동영상',
                            style: TextStyle(
                              fontSize:16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height:10),

                          Row(
                            children: [
                              Image.asset(
                                'assets/images/construction1.jpg',
                                width:100,
                                height:100,
                              ),
                              SizedBox(width:10),
                              Image.asset(
                                'assets/images/construction3.jpg',
                                width:100,
                                height:100,
                              ),
                              SizedBox(width:10),
                              Image.asset(
                                'assets/images/construction1.jpg',
                                width:100,
                                height:100,
                              ),
                            ],
                          ),
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
                  height:100,
                  color: Color(0xFFf0f0f0),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      Spacer(),
                      SizedBox(
                          width: 200.0,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0,),
                            child: ElevatedButton(
                                child:Text('등록하기'),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PortfolioPage()),
                                  );
                                }
                            ),
                          )
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}