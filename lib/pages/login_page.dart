import 'package:flutter/material.dart';
import 'package:flutter_film/datas/customerCheck_data.dart';
import 'package:flutter_film/datas/login_pro_data.dart';
import 'package:flutter_film/models/customerCheck_model.dart';
import 'package:flutter_film/models/userCheck_model.dart';
import 'package:flutter_film/pages/registerProfile_page.dart';
import 'package:flutter_film/pages/register_page.dart';
import 'package:get/get.dart';
import 'package:kakao_flutter_sdk/all.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  bool _isCustomer = true;
  List<User_Check> _user_login;
  TextEditingController idController;
  TextEditingController pwController;
  bool _isLogin;
  bool _isKakaoTalkInstalled = true;


  @override
  void dispose(){
    super.dispose();
  }

  @override
  void initState(){
    _initKakaoTalkInstalled();
    _isLogin = false;
    _user_login = [];
    idController = TextEditingController();
    pwController = TextEditingController();
    //_getLogin();
    super.initState();
  }



  //고객 카카오 로그인
  _initKakaoTalkInstalled() async {
    final installed = await isKakaoTalkInstalled();
    setState(() {
      _isKakaoTalkInstalled = installed;
    });
  }

  _issueAccessToken(String authCode) async {
    try {
      var token = await AuthApi.instance.issueAccessToken(authCode);
      AccessTokenStore.instance.toStore(token);
      Get.toNamed('/main/true?type=customer');
    } catch (e) {
      print("error on issuing access token: $e");
    }
  }

  _loginWithKakao() async {
    try {
      var code = await AuthCodeClient.instance.request();
      await _issueAccessToken(code);
    } catch (e) {
      print(e);
    }
  }

  _loginWithTalk() async{
    try{
      var code = await AuthCodeClient.instance.requestWithTalk();
      await _issueAccessToken(code);
    }catch(e){
      print(e.toString());
    }
  }


  //전문가로그인
  _getLogin(){
    Login_Data.getLogin(idController.text, pwController.text).then((user_login){
      setState(() {
        _user_login = user_login;
      });
      if(user_login.length == 1){
        setState(() {
          _isLogin = true;
          print(_isLogin);
          Get.offNamed('/main/true?type=pro&&id=${idController.text}');
        });
      }else{
        setState(() {
          _isLogin = false;
          Get.snackbar('로그인 실패', '로그인에 실패하였습니다. 아이디와 비밀번호를 확인해주세요');
          print(_isLogin);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    // KaKao native app key
    KakaoContext.clientId = "c99170a34dc9eed524501824ea669455";  //Native Key  //오류 발생 시 initState() 밑에 넣어보기
    // KaKao javascript key
    KakaoContext.javascriptClientId = "2eced4d5fcf0821c6e5526e0dbfac048";  //JavaScript Key

    isKakaoTalkInstalled();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('로그인', style:
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
      backgroundColor: Colors.white,
      body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _isCustomer
                    ?
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                TextButton(
                                  child: Text('고객 로그인'),
                                  onPressed: (){
                                    setState(() {
                                      _isCustomer = true;
                                    });
                                  },
                                ),
                                SizedBox(
                                  height: 2.0,
                                  width: MediaQuery.of(context).size.width,
                                  child: Container(
                                    color: Color(0xFF398FE2),
                                  ),
                                )

                              ],
                            )
                        ),
                        Expanded(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                TextButton(
                                  child: Text('전문가 로그인', style:
                                  TextStyle(
                                      color: Color(0xFFd6d6d6)
                                  ),
                                  ),
                                  onPressed: (){
                                    setState(() {
                                      _isCustomer = false;
                                    });
                                  },
                                ),
                                SizedBox(
                                  height: 2.0,
                                  width: MediaQuery.of(context).size.width,
                                  child: Container(
                                    color: Color(0xFFd6d6d6),
                                  ),
                                )

                              ],
                            )
                        )
                      ],
                    ),
                    SizedBox(height: 55.0,),
                    Container(
                        color: Colors.yellow,
                        child: FlatButton(
                          minWidth: 130.0,
                          child: Text('카카오톡 로그인', style:
                          TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                          ),
                          onPressed: () => _loginWithKakao(),
                        )
                    )
                  ],
                )
                    :
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                TextButton(
                                  child: Text('고객 로그인', style:
                                  TextStyle(
                                    color: Color(0xFFd6d6d6),
                                  ),
                                  ),
                                  onPressed: (){
                                    setState(() {
                                      _isCustomer = true;
                                    });
                                  },
                                ),
                                SizedBox(
                                  height: 2.0,
                                  width: MediaQuery.of(context).size.width,
                                  child: Container(
                                    color: Color(0xFFd6d6d6),
                                  ),
                                )

                              ],
                            )
                        ),
                        Expanded(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                TextButton(
                                  child: Text('전문가 로그인', style:
                                  TextStyle(
                                    color: Color(0xFF398FE2),
                                  ),
                                  ),
                                  onPressed: (){
                                    setState(() {
                                      _isCustomer = false;
                                    });
                                  },
                                ),
                                SizedBox(
                                  height: 2.0,
                                  width: MediaQuery.of(context).size.width,
                                  child: Container(
                                    color: Color(0xFF398FE2),
                                  ),
                                )
                              ],
                            )
                        )
                      ],
                    ),
                    SizedBox(height: 50.0,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: idController,
                            cursorHeight: 20.0,
                            style: TextStyle(
                                fontSize: 13.0, height: 1.0
                            ),
                            decoration: InputDecoration(
                              labelText: '아이디 (이메일)을 입력해주세요',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 15.0,),
                          TextField(
                            controller: pwController,
                            cursorHeight: 20.0,
                            obscureText: true,
                            style: TextStyle(
                                fontSize: 13.0, height: 1.0
                            ),
                            decoration: InputDecoration(
                              labelText: '비밀번호를 입력해주세요',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Spacer(),
                        TextButton(
                          child: Text('아이디 찾기', style:
                          TextStyle(
                              color: Colors.black54,
                              fontSize: 13.0
                          ),
                          ),
                          onPressed: (){
                            print('아이디 찾기');
                          },
                        ),
                        Text('|'),
                        TextButton(
                          child: Text('비밀번호 찾기', style:
                          TextStyle(
                              color: Colors.black54,
                              fontSize: 13.0
                          ),
                          ),
                          onPressed: (){
                            print('비밀번호 찾기');
                          },
                        ),
                        Text('|'),
                        TextButton(
                          child: Text('회원가입', style:
                          TextStyle(
                              color: Colors.black54,
                              fontSize: 13.0
                          ),
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                            print('회원가입');
                          },
                        ),
                        SizedBox(width: 20.0,)
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width*0.7,
                      height: 45.0,
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text('로그인', style:
                          TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                          ),
                          onPressed: (){
                            _getLogin();
                          }
                      ),
                    )
                  ],
                )
              ]
          )
      ),
    );
  }
}

