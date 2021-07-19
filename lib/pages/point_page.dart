import 'package:flutter/material.dart';
import 'package:flutter_film/pages/deposit_page.dart';


class PointPage extends StatefulWidget {

  @override
  _PointPageState createState() => _PointPageState();
}

class _PointPageState extends State<PointPage> {

  var _isChecked = false;

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
              Text(
                '1,500P',
                style:TextStyle(
                  fontSize:37,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF398FE2),
                ),
              ),
              Text(
                '내 보유포인트',
              ),
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
                              value: _isChecked,
                              onChanged: (value){
                                setState(() {
                                  _isChecked = value;
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
                            Text('1000P', style:
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
                              value: _isChecked,
                              onChanged: (value){
                                setState(() {
                                  _isChecked = value;
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
                              value: _isChecked,
                              onChanged: (value){
                                setState(() {
                                  _isChecked = value;
                                });
                              },
                            ),
                            SizedBox(width: 5.0,),
                            Text('100000원', style:
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
                              value: _isChecked,
                              onChanged: (value){
                                setState(() {
                                  _isChecked = value;
                                });
                              },
                            ),
                            SizedBox(width: 5.0,),
                            Text('200000원', style:
                            TextStyle(
                              fontSize:20,
                              fontWeight: FontWeight.w400,
                            ),
                            ),
                            Spacer(),
                            Text('20000P', style:
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
                        child:Text('충전하기'),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DepositPage()),

                          );
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
