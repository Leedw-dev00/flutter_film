import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DepositPage extends StatefulWidget {

  @override
  _DepositPageState createState() => _DepositPageState();
}

class _DepositPageState extends State<DepositPage> {

  String price;

  @override
  void dispose(){
    super.dispose();
  }

  @override
  void initState(){
    price = Get.parameters['price'];
    super.initState();
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '무통장 입금',
                style: TextStyle(
                  fontSize:15,
                ),
              ),
              Container(
                padding:const EdgeInsets.only(top:25,left:20),
                margin:const EdgeInsets.only(top:15),
                width: 350,
                height: 100,

                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.5, color: Color(0xFF707070)), // 박스 테두리 만들기
                  borderRadius: BorderRadius.circular(10), //박스 둥글게 만들기
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '계좌번호 (우리은행 / 한솔 컴퍼니)',
                      style: TextStyle(
                        fontSize:16,
                      ),
                    ),
                    SizedBox(height:10),
                    Text(
                      '1002-076-0170501',
                      style: TextStyle(
                        fontSize:16,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.only(top:30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '거래내역',
                      style: TextStyle(
                        fontSize:15,
                      ),
                    ),
                    Container(
                      padding:const EdgeInsets.only(top:13,left:20),
                      margin:const EdgeInsets.only(top:15),
                      width: 350,
                      height: 100,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 0.5, color: Color(0xFF707070)), // 박스 테두리 만들기
                        borderRadius: BorderRadius.circular(10), //박스 둥글게 만들기
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '포인트 충전',
                            style: TextStyle(
                              fontSize:16,
                            ),
                          ),
                          Text(
                            '토스 (Toss)',
                            style: TextStyle(
                              fontSize:14,
                            ),
                          ),
                          SizedBox(height:10),
                          Text(
                            '2020/05/01 01:52:22',
                            style: TextStyle(
                              fontSize:14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
