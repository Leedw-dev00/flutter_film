import 'package:flutter/material.dart';
import 'package:flutter_film/pages/portfolio_page.dart';


class OrderwPage extends StatefulWidget{
  @override
  _OrderwPageState createState() => _OrderwPageState();
}

class _OrderwPageState extends State<OrderwPage>{
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
      backgroundColor: Color(0xFFf0f0f0),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget> [
              SizedBox(height:15),
              Container(
                padding:const EdgeInsets.only(left:20,right: 20.0),
                height:150,
                color: Color(0xFFffffff),
                child: Row(
                  children: <Widget> [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/pro2.jpg',),
                          radius: 45,
                        ),
                      ],
                    ),
                    SizedBox(width:20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '한솔 컴퍼니',
                          style: TextStyle(
                            fontSize:16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height:5),
                        Text('dgrab0501@naver.com',
                            textAlign:TextAlign.left
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height:15),

              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PortfolioPage())
                  );
                  print('success');
                },
                child: Container(
                  padding:const EdgeInsets.only(left:20,right: 20.0),
                  height:100,
                  color: Color(0xFFffffff),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '고객 요청서',
                            style: TextStyle(
                              fontSize:16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height:5),
                          Text(
                            '문, 문틀, 샷시, 베란다, 현관문 필름교체',
                            style: TextStyle(
                              fontSize:16,

                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height:15),

              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PortfolioPage())
                  );
                  print('success');
                },
                child: Container(
                  padding:const EdgeInsets.only(left:20,right: 20.0),
                  height:100,
                  color: Color(0xFFffffff),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '견적서',
                            style: TextStyle(
                              fontSize:16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height:5),
                          Text(
                            '대략 2,000,000원',
                            style: TextStyle(
                              fontSize:16,

                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height:15),

              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PortfolioPage())
                  );
                  print('success');
                },
                child: Container(
                  padding:const EdgeInsets.only(left:20,right: 20.0),
                  height:130,
                  color: Color(0xFFffffff),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '추가 내용',
                            style: TextStyle(
                              fontSize:16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height:5),
                          Text(
                            '자세한 금액, 원하시는 방향성은 상담 후 최대한',
                            style: TextStyle(
                              fontSize:16,

                            ),
                          ),
                          Text(
                            '맞춰서 작업 진행하겠습니다^^',
                            style: TextStyle(
                              fontSize:16,

                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                padding:const EdgeInsets.only(left:20,right: 20.0),
                height:100,
                color: Color(0xFFf0f0f0),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    Spacer(),
                    SizedBox(
                        width: 200.0,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0,),
                          child: ElevatedButton(
                              child:Text('요청하기'),
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => PortfolioPage()),
                                );
                              }
                          ),
                        )
                    ),
                    Spacer(),
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