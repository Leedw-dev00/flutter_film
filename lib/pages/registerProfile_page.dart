import 'package:flutter/material.dart';
import 'package:flutter_film/datas/registerP_Profile_data.dart';
import 'package:flutter_film/pages/login_page.dart';
import 'package:get/get.dart';

class RegisterProfilePage extends StatefulWidget{
  @override
  _RegisterProfilePageState createState() => _RegisterProfilePageState();
}

class _RegisterProfilePageState extends State<RegisterProfilePage>{

  TextEditingController introduceController;
  TextEditingController basicController;
  TextEditingController comController;

  @override
  void initState(){
    introduceController = TextEditingController();
    basicController = TextEditingController();
    comController = TextEditingController();
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }

  //전문가 회원 회원가입
  _addProfile(){
    RegisterProfile_Data.addProfile(Get.arguments, introduceController.text, basicController.text, comController.text).then((result){
        Get.offNamed('/loginPage');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('${Get.arguments} 프로필 등록', style:
        TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ),
        ),

      ),
      backgroundColor: Color(0xFFF0F0F0),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              SizedBox(height: 10.0,),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 15.0),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/defaultImage.png'),
                      backgroundColor: Colors.white,
                      radius: 60.0,
                    ),
                    TextButton(
                      child: Text('프로필 등록 및 변경'),
                      onPressed: (){
                        print('프로필 설정');
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('전문가 정보', style:
                    TextStyle(
                        color: Color(0XFF398FE2),
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0
                    ),
                    ),
                    SizedBox(height: 3.0,),
                    SizedBox(
                      child: Container(
                        width: 60.0,
                        height: 2.0,
                        color: Color(0XFF398FE2),
                      ),
                    ),
                    SizedBox(height: 30.0,),
                    Text('소개', style:
                      TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Container(
                      height: 80.0,
                      child: TextField(
                        controller: introduceController,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        cursorHeight: 20.0,
                        style: TextStyle(
                            fontSize: 13.0, height: 1.0
                        ),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: '간단한 소개를 작성해주세요(200자 이내)',
                          labelStyle: TextStyle(fontSize: 11.0),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF636363), width: 0.5),
                          ),
                          border: OutlineInputBorder(borderSide: BorderSide(width: 0.5)),
                        ),
                      ),
                    ),
                    Text('서비스 가능 지역 / 연락 가능 시간', style:
                    TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0
                    ),
                    ),
                    SizedBox(height: 15.0,),
                    Container(
                      height: 80.0,
                      child: TextField(
                        controller: basicController,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        cursorHeight: 20.0,
                        style: TextStyle(
                            fontSize: 13.0, height: 1.0
                        ),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: '200자 이내로 입력해주세요',
                          labelStyle: TextStyle(fontSize: 11.0),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF636363), width: 0.5),
                          ),
                          border: OutlineInputBorder(borderSide: BorderSide(width: 0.5)),
                        ),
                      ),
                    ),

                    Text('경력 / 직원 수 / 사업자 등록 여부', style:
                      TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Container(
                      height: 80.0,
                      child: TextField(
                        controller: comController,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        cursorHeight: 20.0,
                        style: TextStyle(
                            fontSize: 13.0, height: 1.0
                        ),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: '200자 이내로 입력해주세요',
                          labelStyle: TextStyle(fontSize: 11.0),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF636363), width: 0.5),
                          ),
                          border: OutlineInputBorder(borderSide: BorderSide(width: 0.5)),
                        ),
                      ),
                    ),
                    Text('작업 사진 등록(최대 5장)', style:
                      TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(width: 0.5, color: Color(0xFFd1d1d1),),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.camera_alt_outlined, color: Color(0xFFd1d1d1),),
                            onPressed: (){
                              _addProfile();
                              print('image 등록');
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Row(
                children: <Widget>[
                  Spacer(),
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                      child: Text('프로필 저장', style:
                      TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF398FE2)
                      ),
                      onPressed: (){
                        _addProfile();
                      },
                    ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: 50.0,),

            ],
          ),
        ),
      ),
    );
  }
}
