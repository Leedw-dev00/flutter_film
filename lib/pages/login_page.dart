import 'package:flutter/material.dart';
import 'package:flutter_film/pages/register_page.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  bool _isCustomer = true;

  @override
  void dispose(){
    super.dispose();
  }

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                    onPressed: (){
                      print('카카오톡 로그인');
                    },
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
                      print('로그인');
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

