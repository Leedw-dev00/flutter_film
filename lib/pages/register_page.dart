import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class RegisterPage extends StatefulWidget{
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{

  DateTime _selectedDate = DateTime.now();
  final _valueList = ["선택","서울", "인천", "경기", "대전"];
  var _selectedValue1 = '선택';
  var _selectedValue2 = '선택';
  var _selectedValue3 = '선택';

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2999)
    );
    if(picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }


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

          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextField(
                cursorHeight: 20.0,
                style: TextStyle(
                  fontSize: 13.0, height: 0.5
                ),
                decoration: InputDecoration(
                  fillColor: Color(0xFFF8F8F8),
                  filled: true,
                  labelText: '아이디 (이메일)',
                  labelStyle: TextStyle(fontSize: 11.0),
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
                  fillColor: Color(0xFFF8F8F8),
                  filled: true,
                  labelText: '비밀번호 (10자 이상)',
                  labelStyle: TextStyle(fontSize: 11.0),
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
                  fillColor: Color(0xFFF8F8F8),
                  filled: true,
                  labelText: '비밀번호 확인',
                  labelStyle: TextStyle(fontSize: 11.0),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0,),
              Text('생년월일', style:
                TextStyle(
                  color: Colors.grey,
                  fontSize: 13.0,
                ),
              ),
              SizedBox(height: 8.0,),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  border: Border.all(width: 1.0, color: Color(0xFF636363)),
                  borderRadius: BorderRadius.circular(3.0)
                ),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 10.0,),
                    Text('${_selectedDate.toLocal()}'.split(' ')[0], style:
                    TextStyle(
                        fontSize: 16.0
                    ),
                    ),
                    Spacer(),
                    IconButton(icon: Icon(Icons.calendar_today_outlined), onPressed: (){
                      _selectDate(context);
                    })
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Text('휴대폰 인증', style:
                TextStyle(
                  color: Colors.grey,
                  fontSize: 13.0,
                ),
              ),
              SizedBox(height: 5.0,),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: TextField(
                      cursorHeight: 20.0,
                      style: TextStyle(
                          fontSize: 13.0, height: 0.5
                      ),
                      decoration: InputDecoration(
                        fillColor: Color(0xFFF8F8F8),
                        filled: true,
                        labelText: '휴대폰 번호를 입력하세요 (-제외)',
                        labelStyle: TextStyle(fontSize: 11.0),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 5.0,),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      child: Text('전송', style:
                        TextStyle(
                          fontSize: 13.0
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF398FE2)
                      ),
                      onPressed: (){
                        print('인증 번호 전송');
                      },
                    ),
                  )
                ],
              ),
              SizedBox(height: 8.0,),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: TextField(
                      cursorHeight: 20.0,
                      style: TextStyle(
                          fontSize: 13.0, height: 0.5
                      ),
                      decoration: InputDecoration(
                        fillColor: Color(0xFFF8F8F8),
                        filled: true,
                        labelText: '인증번호를 입력하세요',
                        labelStyle: TextStyle(fontSize: 11.0),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 5.0,),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      child: Text('인증', style:
                        TextStyle(
                            fontSize: 13.0
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF398FE2)
                      ),
                      onPressed: (){
                        print('인증 번호 전송');
                      },
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0,),
              TextField(
                cursorHeight: 20.0,
                style: TextStyle(
                    fontSize: 13.0, height: 0.5
                ),
                decoration: InputDecoration(
                  fillColor: Color(0xFFF8F8F8),
                  filled: true,
                  labelText: '이름(실명) 또는 회사명',
                  labelStyle: TextStyle(fontSize: 11.0),
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
                  fillColor: Color(0xFFF8F8F8),
                  filled: true,
                  labelText: '사업자 번호 (-제외)',
                  labelStyle: TextStyle(fontSize: 11.0),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0,),
              Text('작업 가능 지역', style:
                TextStyle(
                  color: Colors.grey,
                  fontSize: 13.0,
                ),
              ),
              //SizedBox(height: 8.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('1순위', style:
                    TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width: 5.0,),
                  DropdownButton(
                    value: _selectedValue1,
                    items: _valueList.map(
                            (value){
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value, style: TextStyle(color: Colors.grey),),
                          );
                        }
                    ).toList(),
                    onChanged: (value){
                      setState(() {
                        _selectedValue1 = value;
                      });
                    },
                  ),
                  SizedBox(width: 10.0,),
                  Text('2순위', style:
                  TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(width: 5.0,),
                  DropdownButton(
                    value: _selectedValue2,
                    items: _valueList.map(
                            (value){
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value, style: TextStyle(color: Colors.grey),),
                          );
                        }
                    ).toList(),
                    onChanged: (value){
                      setState(() {
                        _selectedValue2 = value;
                      });
                    },
                  ),
                  SizedBox(width: 10.0,),
                  Text('3순위', style:
                  TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(width: 5.0,),
                  DropdownButton(
                    value: _selectedValue3,
                    items: _valueList.map(
                            (value){
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value, style: TextStyle(color: Colors.grey),),
                          );
                        }
                    ).toList(),
                    onChanged: (value){
                      setState(() {
                        _selectedValue3 = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 30.0,),
              Container(

              ),
              SizedBox(height: 30.0,),
              Row(
                children: <Widget>[
                  Spacer(),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      child: Text('회원가입', style:
                      TextStyle(
                          fontSize: 13.0
                      ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF398FE2)
                      ),
                      onPressed: (){
                        print('가입 완료');
                      },
                    ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: 15.0,)
            ],
          ),
        ),
      ),
    );
  }
}