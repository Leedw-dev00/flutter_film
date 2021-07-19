import 'package:flutter/material.dart';

class OrderListPage extends StatefulWidget{
  @override
  _OrderListPageState createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('받은 견적서', style:
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

      backgroundColor: Color(0xFFf0f0f0),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                width: MediaQuery.of(context).size.width*0.9,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Color(0xFF398FE2),),
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffffffff),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/pro.jpg'),
                          radius: 30,
                        ),
                        SizedBox(width:20.0,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('인테리어', style: TextStyle(fontSize:10.0,)),
                            Text('한솔 컴퍼니', style: TextStyle(fontSize:14.0, fontWeight: FontWeight.w700)),
                            Row(
                              children: <Widget> [
                                Icon(Icons.star,color:Color(0xFFFEC107), size:13.0),
                                Text('4.7', style: TextStyle(fontSize:12.0),),
                                SizedBox(width:5),
                                Text('(10개)', style: TextStyle(fontSize:10.0),),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget> [
                            Text('[인테리어 필름]', style: TextStyle(fontSize: 12.0)),
                            Text('필름 시공 전문', style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500),)
                          ],
                        ),
                        SizedBox(width: 10.0,)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                width: MediaQuery.of(context).size.width*0.9,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Color(0xFF398FE2),),
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffffffff),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/pro2.jpg'),
                          radius: 30,
                        ),
                        SizedBox(width:20.0,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('인테리어', style: TextStyle(fontSize:10.0,)),
                            Text('디올디 컴퍼니', style: TextStyle(fontSize:14.0, fontWeight: FontWeight.w700)),
                            Row(
                              children: <Widget> [
                                Icon(Icons.star,color:Color(0xFFFEC107), size:13.0),
                                Text('4.7', style: TextStyle(fontSize:12.0),),
                                SizedBox(width:5),
                                Text('(10개)', style: TextStyle(fontSize:10.0),),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget> [
                            Text('[인테리어 필름]', style: TextStyle(fontSize: 12.0)),
                            Text('필름 시공 전문', style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500),)
                          ],
                        ),
                        SizedBox(width: 10.0,)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                width: MediaQuery.of(context).size.width*0.9,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Color(0xFF398FE2),),
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffffffff),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/pro3.jpg'),
                          radius: 30,
                        ),
                        SizedBox(width:20.0,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('인테리어', style: TextStyle(fontSize:10.0,)),
                            Text('대신 컴퍼니', style: TextStyle(fontSize:14.0, fontWeight: FontWeight.w700)),
                            Row(
                              children: <Widget> [
                                Icon(Icons.star,color:Color(0xFFFEC107), size:13.0),
                                Text('4.7', style: TextStyle(fontSize:12.0),),
                                SizedBox(width:5),
                                Text('(10개)', style: TextStyle(fontSize:10.0),),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget> [
                            Text('[인테리어 필름]', style: TextStyle(fontSize: 12.0)),
                            Text('필름 시공 전문', style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500),)
                          ],
                        ),
                        SizedBox(width: 10.0,)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                width: MediaQuery.of(context).size.width*0.9,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Color(0xFF398FE2),),
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffffffff),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/pro4.png'),
                          radius: 30,
                        ),
                        SizedBox(width:20.0,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('인테리어', style: TextStyle(fontSize:10.0,)),
                            Text('우원 컴퍼니', style: TextStyle(fontSize:14.0, fontWeight: FontWeight.w700)),
                            Row(
                              children: <Widget> [
                                Icon(Icons.star,color:Color(0xFFFEC107), size:13.0),
                                Text('4.7', style: TextStyle(fontSize:12.0),),
                                SizedBox(width:5),
                                Text('(10개)', style: TextStyle(fontSize:10.0),),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget> [
                            Text('[인테리어 필름]', style: TextStyle(fontSize: 12.0)),
                            Text('필름 시공 전문', style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500),)
                          ],
                        ),
                        SizedBox(width: 10.0,),
                      ],
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