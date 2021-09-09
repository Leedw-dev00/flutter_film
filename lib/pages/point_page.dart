import 'package:flutter/material.dart';
import 'package:flutter_film/datas/pro_point_data.dart';
import 'package:flutter_film/datas/register_pointinfo_data.dart';
import 'package:flutter_film/models/pro_point_model.dart';
import 'package:get/get.dart';


class PointPage extends StatefulWidget {

  @override
  _PointPageState createState() => _PointPageState();
}

class _PointPageState extends State<PointPage> {
  bool _is5000 = false;
  bool _is10000 = false;
  bool _is30000 = false;
  bool _is50000 = false;
  String _userId;
  String point;
  int _selectedValue;
  bool _isLoading;
  List<Pro_Point> _pro_point;


  @override
  void dispose(){
    super.dispose();
  }

  @override
  void initState(){
    _isLoading = false;
    _pro_point = [];
    _userId = Get.parameters['id'];
    _getProPoint();
    super.initState();
  }

  _getProPoint(){
    ProPoint_Data.getProPoint(_userId).then((pro_point){
      setState(() {
        _pro_point = pro_point;
      });
      if(pro_point.length == 0){
        _isLoading = false;
      }else{
        setState(() {
          _isLoading = true;
        });
      }
    });
  }

  _addPointInfo(){
    Register_PointInfo.addPointInfo(_userId, '$_selectedValue', '포인트 충전').then((result){
      if(result == 'success'){
        print('addpointInfo success');
        Get.offNamed('/deposit/:true?pro_id=$_userId');
      }else{
        print('addpointInfo fail');
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('포인트 충전', style:
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
      backgroundColor: Color(0xFFF0F0F0),
      body:SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _isLoading
                  ?
              Text(
                '보유 포인트 : ${_pro_point[0].total_point}',
                style:TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF398FE2),
                ),
              )
                  :CircularProgressIndicator(),
              Padding(
                padding: const EdgeInsets.only(top:30,),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        width: MediaQuery.of(context).size.width*0.75,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 0.5, color: Color(0xFF707070)), // 박스 테두리 만들기
                          borderRadius: BorderRadius.circular(10), //박스 둥글게 만들기
                        ),
                        child: Row(
                          children: <Widget>[

                            Checkbox(
                              value: _is5000,
                              onChanged: (value){
                                setState(() {
                                  _is5000 = value;
                                  _selectedValue = 5000;
                                  _is10000 = false;
                                  _is30000 = false;
                                  _is50000 = false;
                                });
                              },
                            ),
                            SizedBox(width: 5.0,),
                            Text('5000원', style:
                            TextStyle(
                              fontSize:20,
                              fontWeight: FontWeight.w400,
                            ),
                            ),
                            Spacer(),
                            Text('5000P', style:
                            TextStyle(
                              fontSize:20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF398FE2),
                            ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        width: MediaQuery.of(context).size.width*0.75,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 0.5, color: Color(0xFF707070)), // 박스 테두리 만들기
                          borderRadius: BorderRadius.circular(10), //박스 둥글게 만들기
                        ),
                        child: Row(
                          children: <Widget>[
                            Checkbox(
                              value: _is10000,
                              onChanged: (value){
                                setState(() {
                                  _is10000 = value;
                                  _selectedValue = 10000;
                                  _is5000 = false;
                                  _is30000 = false;
                                  _is50000 = false;
                                });
                              },
                            ),
                            SizedBox(width: 5.0,),
                            Text('10000원', style:
                            TextStyle(
                              fontSize:20,
                              fontWeight: FontWeight.w400,
                            ),
                            ),
                            Spacer(),
                            Text('10000P', style:
                            TextStyle(
                              fontSize:20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF398FE2),
                            ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        width: MediaQuery.of(context).size.width*0.75,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 0.5, color: Color(0xFF707070)), // 박스 테두리 만들기
                          borderRadius: BorderRadius.circular(10), //박스 둥글게 만들기
                        ),
                        child: Row(
                          children: <Widget>[
                            Checkbox(
                              value: _is30000,
                              onChanged: (value){
                                setState(() {
                                  _is30000 = value;
                                  _selectedValue = 30000;
                                  _is5000 = false;
                                  _is10000 = false;
                                  _is50000 = false;
                                });
                              },
                            ),
                            SizedBox(width: 5.0,),
                            Text('30000원', style:
                            TextStyle(
                              fontSize:20,
                              fontWeight: FontWeight.w400,
                            ),
                            ),
                            Spacer(),
                            Text('30000P', style:
                            TextStyle(
                              fontSize:20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF398FE2),
                            ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        width: MediaQuery.of(context).size.width*0.75,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 0.5, color: Color(0xFF707070)), // 박스 테두리 만들기
                          borderRadius: BorderRadius.circular(10), //박스 둥글게 만들기
                        ),
                        child: Row(
                          children: <Widget>[
                            Checkbox(
                              value: _is50000,
                              onChanged: (value){
                                setState(() {
                                  _is50000 = value;
                                  _selectedValue = 50000;
                                  _is5000 = false;
                                  _is10000 = false;
                                  _is30000 = false;
                                });
                              },
                            ),
                            SizedBox(width: 5.0,),
                            Text('50000원', style:
                            TextStyle(
                              fontSize:20,
                              fontWeight: FontWeight.w400,
                            ),
                            ),
                            Spacer(),
                            Text('50000P', style:
                            TextStyle(
                              fontSize:20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF398FE2),
                            ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.0,),
                    ]
                ),
              ),
              SizedBox(height:30,),
              SizedBox(
                  width: 200.0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0,),
                    child: ElevatedButton(
                        child:Text('충전하기', style:
                          TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        onPressed: (){
                          if(_is5000 || _is10000 || _is30000 || _is50000){
                            _addPointInfo();
                          }else{
                            Get.defaultDialog(title: 'Note', titleStyle: TextStyle(color: Colors.red, fontWeight: FontWeight.bold), middleText: '충전할 포인트를 선택하세요');
                          }
                        }
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
