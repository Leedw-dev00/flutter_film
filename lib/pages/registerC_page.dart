import 'package:flutter/material.dart';
import 'package:flutter_film/datas/customer_area_data.dart';
import 'package:get/get.dart';
import 'package:kakao_flutter_sdk/all.dart';

class RegisterCPage extends StatefulWidget{
  @override
  _RegisterCPageState createState() => _RegisterCPageState();
}

class _RegisterCPageState extends State<RegisterCPage>{
  final _valueList = ["지역을 선택해주세요","서울", "인천", "경기", "대전"];
  var _selectedValue1 = '지역을 선택해주세요';

  @override
  void dispose(){
    super.dispose();
  }

  @override initState(){
    _initTexts();
    super.initState();
  }

  _addArea(){
    Area_Data.addArea(user_id, _selectedValue1).then((result){
      Get.toNamed('/main/true?type=customer&&id=${user_id}');
    });
  }

  _initTexts() async{
    final User user = await UserApi.instance.me();
    setState(() {
      user_id = user.kakaoAccount.email;
    });
  }
  String user_id = 'None';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('$user_id', style:
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
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        //height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('서비스를 희망하는 지역을 선택해주세요', style:
              TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0,),
            SizedBox(width: Get.width,
              child: DropdownButton(
                isExpanded: true,
                elevation: 5,
                value: _selectedValue1,
                items: _valueList.map(
                        (value){
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value, style: TextStyle(color: Colors.grey),),
                      );
                    },
                ).toList(),
                onChanged: (value){
                  setState(() {
                    _selectedValue1 = value;
                  });
                },
              ),
            ),
            SizedBox(height: 15.0,),
            Container(
              width: Get.width,
              height: 150.0,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.grey)
              ),
              child: Text('선택한 지역의 전문가를 추천합니다.<Image 넣기>', style:
                TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.w600,
                  fontSize: 15.0,
                ),
              ),
            ),
            SizedBox(height: 15.0,),
            ElevatedButton(
              child: Text('저장하기', style:
                TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0
                ),
              ),
              onPressed: (){
                _addArea();
              },
            )

          ],
        ),
      ),
    );
  }
}