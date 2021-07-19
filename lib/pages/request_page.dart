import 'package:flutter/material.dart';
import 'package:flutter_film/pages/deposit_page.dart';


class RequestPage extends StatefulWidget {

  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('의뢰내역', style:
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
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height:30),
                      Text(
                        '진행중인 의뢰',
                        style: TextStyle(
                          fontSize:15,
                        ),
                      ),
                      SizedBox(height:15),
                      Container(
                        padding:const EdgeInsets.only(left:20,right: 20.0),
                        width: MediaQuery.of(context).size.width*0.9,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 0.5, color: Color(0xFF707070)), // 박스 테두리 만들기
                          borderRadius: BorderRadius.circular(10), //박스 둥글게 만들기
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '인테리어 필름 시공',
                                    style: TextStyle(
                                      fontSize:16,
                                    ),
                                  ),
                                  Text(
                                    '한솔 컴퍼니',
                                    style: TextStyle(
                                      fontSize:13,
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
                              Text(
                                '2000P ' '| 진행',
                                style: TextStyle(
                                  color:Color(0xFFE29339),
                                  fontSize:18,
                                ),
                              ),
                            ]
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        '완료된 의뢰',
                        style: TextStyle(
                          fontSize:15,
                        ),
                      ),
                      Container(
                        //padding: const EdgeInsets.only(top:30),
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            SizedBox(height:15),
                            Container(
                              padding:const EdgeInsets.only(left:20,right: 20.0),
                              width: MediaQuery.of(context).size.width,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(width: 0.5, color: Color(0xFF707070)), // 박스 테두리 만들기
                                borderRadius: BorderRadius.circular(10), //박스 둥글게 만들기
                              ),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          '인테리어 필름 시공',
                                          style: TextStyle(
                                            fontSize:16,
                                          ),
                                        ),
                                        Text(
                                          '한솔 컴퍼니',
                                          style: TextStyle(
                                            fontSize:13,
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
                                    Text(
                                      '2000P ' '| 완료',
                                      style: TextStyle(
                                        color:Color(0xFF398FE2),
                                        fontSize:18,
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                            SizedBox(height:5),
                            Row(
                              children: <Widget>[
                                Spacer(),
                                Container(

                                  width: 130.0,
                                  child: ElevatedButton(
                                      child:Text('후기 작성하기'),
                                      onPressed: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => DepositPage()),
                                        );
                                      }
                                  ),
                                ),

                              ],
                            ),

                            // SizedBox(height:15),
                            //
                            //
                            // Container(
                            //   padding:const EdgeInsets.only(left:20,right: 20.0),
                            //
                            //   width: MediaQuery.of(context).size.width*0.9,
                            //   height: 100,
                            //   decoration: BoxDecoration(
                            //     color: Colors.white,
                            //     border: Border.all(width: 0.5, color: Color(0xFF707070)), // 박스 테두리 만들기
                            //     borderRadius: BorderRadius.circular(10), //박스 둥글게 만들기
                            //   ),
                            //   child: Row(
                            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //       crossAxisAlignment: CrossAxisAlignment.center,
                            //       children: <Widget>[
                            //         Column(
                            //           crossAxisAlignment: CrossAxisAlignment.start,
                            //           mainAxisAlignment: MainAxisAlignment.center,
                            //           children: <Widget>[
                            //             Text(
                            //               '인테리어 필름 시공',
                            //               style: TextStyle(
                            //                 fontSize:16,
                            //               ),
                            //             ),
                            //             Text(
                            //               '한솔 컴퍼니',
                            //               style: TextStyle(
                            //                 fontSize:13,
                            //               ),
                            //             ),
                            //             SizedBox(height:10),
                            //             Text(
                            //               '2020/05/01 01:52:22',
                            //               style: TextStyle(
                            //                 fontSize:14,
                            //               ),
                            //             ),
                            //           ],
                            //         ),
                            //         Text(
                            //           '2000P ' '| 완료',
                            //           style: TextStyle(
                            //             color:Color(0xFF398FE2),
                            //             fontSize:18,
                            //           ),
                            //         ),
                            //       ]
                            //   ),
                            // ),
                            // SizedBox(height:5),
                            // Container(
                            //    width: 150.0,
                            //       child: ElevatedButton(
                            //           child:Text('후기 작성하기'),
                            //           onPressed: (){
                            //             Navigator.push(
                            //               context,
                            //               MaterialPageRoute(builder: (context) => DepositPage()),
                            //             );
                            //           }
                            //       ),
                            //     ),
                            //
                            // SizedBox(height:15),
                            //
                            // Container(
                            //   padding:const EdgeInsets.only(left:20,right: 20.0),
                            //
                            //   width: MediaQuery.of(context).size.width*0.9,
                            //   height: 100,
                            //   decoration: BoxDecoration(
                            //     color: Colors.white,
                            //     border: Border.all(width: 0.5, color: Color(0xFF707070)), // 박스 테두리 만들기
                            //     borderRadius: BorderRadius.circular(10), //박스 둥글게 만들기
                            //   ),
                            //   child: Row(
                            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //       crossAxisAlignment: CrossAxisAlignment.center,
                            //       children: <Widget>[
                            //         Column(
                            //           crossAxisAlignment: CrossAxisAlignment.start,
                            //           mainAxisAlignment: MainAxisAlignment.center,
                            //           children: <Widget>[
                            //             Text(
                            //               '포인트 충전',
                            //               style: TextStyle(
                            //                 fontSize:16,
                            //               ),
                            //             ),
                            //             Text(
                            //               '토스 (Toss)',
                            //               style: TextStyle(
                            //                 fontSize:13,
                            //               ),
                            //             ),
                            //             SizedBox(height:10),
                            //             Text(
                            //               '2020/05/01 01:52:22',
                            //               style: TextStyle(
                            //                 fontSize:14,
                            //               ),
                            //             ),
                            //           ],
                            //         ),
                            //         Text(
                            //           '50000P ' '| 완료',
                            //           style: TextStyle(
                            //             color:Color(0xFF398FE2),
                            //             fontSize:18,
                            //           ),
                            //         ),
                            //       ]
                            //   ),
                            // ),
                            //
                            // SizedBox(height:5),
                            //
                            // Container(
                            //   width: 150.0,
                            //   child: ElevatedButton(
                            //       child:Text('후기 작성하기'),
                            //       onPressed: (){
                            //         Navigator.push(
                            //           context,
                            //           MaterialPageRoute(builder: (context) => DepositPage()),
                            //         );
                            //       }
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
