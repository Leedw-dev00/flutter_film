import 'package:flutter/material.dart';

class EstimatePage extends StatefulWidget{
  @override
  _EstimatePageState createState() => _EstimatePageState();
}

class _EstimatePageState extends State<EstimatePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('견적서', style:
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
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0,),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset('assets/images/pro.jpg', fit: BoxFit.cover, width: 80.0, height: 80.0,),
                  ),
                  SizedBox(width: 15.0,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('한솔 컴퍼니', style:
                        TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text('dgrab0520@gmail.com', style:
                        TextStyle(
                          fontSize: 11.0,
                          fontWeight: FontWeight.w300
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('고객 요청 내용', style:
                    TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 3.0,),
                  Text('문, 문틀, 샷시, 베란다장, 현관문 필름교체', style:
                    TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                ],
              )
            ),
            SizedBox(height: 10.0,),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('견적서', style:
                    TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 3.0,),
                  Text('200만원 이내', style:
                    TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                ],
              )
            ),
            SizedBox(height: 10.0,),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('추가 내용', style:
                    TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 3.0,),
                  Text('자세한 금액과, 원하시는 방향성은 상담 후 최대한 맞춰서 작업 진행하겠습니다.', style:
                    TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                ],
              )
            ),
            SizedBox(height: 40.0,),
            SizedBox(
              width: 100.0,
              child: ElevatedButton(
                child: Text('요청하기', style:
                  TextStyle(
                      fontSize: 13.0
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFF398FE2)
                ),
                onPressed: (){
                  print('요청하기');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}