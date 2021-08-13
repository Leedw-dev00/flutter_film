import 'package:flutter/material.dart';
import 'package:flutter_film/datas/pro_select_data.dart';
import 'package:flutter_film/models/pro_select_model.dart';
import 'package:flutter_film/widgets/profilePSecond_widget.dart';
import 'package:flutter_film/widgets/profilePThird_widget.dart';
import 'package:get/get.dart';

class ProfilePPage extends StatefulWidget{
  @override
  _ProfilePPageState createState() => _ProfilePPageState();
}

class _ProfilePPageState extends State<ProfilePPage>{

  String user_id;
  String _isLogin;
  List<Pro_Select> _proSelect;
  bool _isLoading;

  @override
  void dispose(){
    super.dispose();
  }

  @override
  void initState(){
    _isLoading = false;
    _isLogin = Get.parameters['param'];
    user_id = Get.parameters['id'];
    print('$user_id');
    _proSelect = [];
    _getProSelect();
    print('$user_id');
    super.initState();
  }


  _getProSelect(){
    ProSelect_Data.getProSelect(user_id).then((proSelect){
      setState(() {
        _proSelect = proSelect;
      });
      print(proSelect.length);
      if(proSelect.length == 0){
          _isLoading = false;
      }else{
          _isLoading = true;
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
        title: Text('전문가', style:
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:
        _isLoading
        ?
        Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10.0,),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('assets/images/pro.jpg', height: 65.0, width: 65.0, fit: BoxFit.cover,),
                    ),
                    SizedBox(width: 20.0,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('인테리어', style: TextStyle(fontSize: 10.0,),),
                        SizedBox(height: 1.0,),
                        Text('${_proSelect[0].com_name}', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700),),
                        SizedBox(height: 5.0,),
                        Row(
                          children: <Widget>[
                            Icon(Icons.star, color: Color(0xFFFEC107), size: 13.0,),
                            Text('4.7', style: TextStyle(fontSize: 12.0),)
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    _isLogin == 'true'
                    ?
                    SizedBox(
                      width: 75.0,
                      height: 25.0,
                      child: ElevatedButton(
                        child: Text('신청하기', style:
                        TextStyle(
                            fontSize: 11.0,
                            color: Color(0xFF398FE2)
                        ),
                          textAlign: TextAlign.center,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(
                            width: 1.0, color: Color(0xFF398FE2),
                          ),
                          elevation: 0.0,
                        ),
                        onPressed: (){
                          print('신청하기');
                        },
                      ),
                    )
                    :SizedBox(),
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              SizedBox(height: 10.0,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    SizedBox(height: 10.0,),
                    Text('${_proSelect[0].introduce}', style:
                    TextStyle(
                        color: Colors.grey,
                        fontSize: 13.0
                    ),
                    ),
                    SizedBox(height: 20.0),
                    Text('기본정보', style:
                    TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0
                    ),
                    ),
                    SizedBox(height: 10.0,),
                    Text('${_proSelect[0].basic}', style:
                    TextStyle(
                        color: Colors.grey,
                        fontSize: 13.0
                    ),
                    ),
                    SizedBox(height: 20.0),
                    Text('추가정보', style:
                    TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0
                    ),
                    ),
                    SizedBox(height: 10.0,),
                    Text('${_proSelect[0].company}', style:
                    TextStyle(
                        color: Colors.grey,
                        fontSize: 13.0
                    ),
                    ),

                    SizedBox(height: 20.0),
                    Text('사진정보', style:
                    TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0
                    ),
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset('assets/images/port1.jpg', width: 80.0, height: 80.0, fit: BoxFit.cover,),
                            ),
                            SizedBox(width: 10.0,),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset('assets/images/port2.jpg', width: 80.0, height: 80.0, fit: BoxFit.cover,),
                            ),
                            SizedBox(width: 10.0,),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset('assets/images/port3.jpg', width: 80.0, height: 80.0, fit: BoxFit.cover,),
                            ),
                            SizedBox(width: 10.0,),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset('assets/images/port4.jpg', width: 80.0, height: 80.0, fit: BoxFit.cover,),
                            ),
                            SizedBox(width: 10.0,),ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset('assets/images/port5.jpg', width: 80.0, height: 80.0, fit: BoxFit.cover,),
                            ),
                            SizedBox(width: 10.0,),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              ProfileP_Third(),
              SizedBox(height: 20.0,),
              SizedBox(
                width: 100.0,
                height: 40.0,
                child: ElevatedButton(
                  child: Text('리뷰 더보기', style:
                  TextStyle(
                      fontSize: 13.0,
                      color: Color(0xFF398FE2),
                      fontWeight: FontWeight.w600
                  ),
                    textAlign: TextAlign.center,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    side: BorderSide(
                      width: 1.0, color: Color(0xFF398FE2),
                    ),
                    elevation: 0.0,
                  ),
                  onPressed: (){
                    print('리뷰 더보기');
                  },
                ),
              ),
              SizedBox(height: 40.0,),
            ],
          ),
        )
        :CircularProgressIndicator(),
      ),
    );
  }
}