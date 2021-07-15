import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget{
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('회원가입', style:
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Color(0xFFF0F0F0),
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
          child: Column(
            children: <Widget>[
              TextField(
                cursorHeight: 20.0,
                style: TextStyle(
                    fontSize: 13.0, height: 0.5
                ),
                decoration: InputDecoration(
                  labelText: '아이디 (이메일)',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 8.0,),
              TextField(
                cursorHeight: 20.0,
                style: TextStyle(
                    fontSize: 13.0, height: 0.5
                ),
                decoration: InputDecoration(
                  labelText: '비밀번호 (10자 이상)',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 8.0,),
              TextField(
                cursorHeight: 20.0,
                style: TextStyle(
                    fontSize: 13.0, height: 0.5
                ),
                decoration: InputDecoration(
                  labelText: '비밀번호 확인',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 8.0,),
            ],
          ),
        ),
      ),
    );
  }
}