import 'package:flutter/material.dart';

class NotiPage extends StatefulWidget{
  @override
  _NotiPageState createState() => _NotiPageState();
}

class _NotiPageState extends State<NotiPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('알림', style:
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
      backgroundColor: Color(0xFFf2f2f2),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30.0,),
              Text('새로운 알람', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),),
              SizedBox(height: 10.0,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.2,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(width: 1.0, color: Color(0xFF398FE2))
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('한솔 컴퍼니에서 견적서를 보냈습니다.'),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(width: 1.0, color: Color(0xFF398FE2))
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('한솔 컴퍼니에서 견적서를 보냈습니다.'),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(width: 1.0, color: Color(0xFF398FE2))
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('공간 디자인에서 견적서를 보냈습니다.')
                          ],
                        )
                      ),
                      SizedBox(height: 10.0,),
                    ],
                  )
                ),
              ),
              SizedBox(height: 30.0,),
              Text('지난 알람', style: TextStyle(fontSize: 14.0),),
              SizedBox(height: 10.0,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.4,
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(width: 1.0, color: Color(0xFFd1d1d1))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('한솔 컴퍼니에서 견적서를 보냈습니다.', style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(width: 1.0, color: Color(0xFFd1d1d1))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('한솔 컴퍼니에서 견적서를 보냈습니다.', style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(width: 1.0, color: Color(0xFFd1d1d1))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('한솔 컴퍼니에서 견적서를 보냈습니다.', style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(width: 1.0, color: Color(0xFFd1d1d1))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('한솔 컴퍼니에서 견적서를 보냈습니다.', style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(width: 1.0, color: Color(0xFFd1d1d1))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('한솔 컴퍼니에서 견적서를 보냈습니다.', style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(width: 1.0, color: Color(0xFFd1d1d1))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('한솔 컴퍼니에서 견적서를 보냈습니다.', style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 5.0),
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(width: 1.0, color: Color(0xFFd1d1d1))
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('공간 디자인에서 견적서를 보냈습니다.', style: TextStyle(color: Colors.grey),)
                              ],
                            )
                        ),
                        SizedBox(height: 10.0,),
                      ],
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}