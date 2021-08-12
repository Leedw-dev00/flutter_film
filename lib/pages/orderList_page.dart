import 'package:flutter/material.dart';
import 'package:flutter_film/datas/pro_profile_data.dart';
import 'package:flutter_film/datas/select_order_data.dart';
import 'package:flutter_film/models/pro_profile_model.dart';
import 'package:flutter_film/models/select_order_model.dart';
import 'package:flutter_film/pages/orderW_page.dart';
import 'package:get/get.dart';

class OrderListPage extends StatefulWidget{
  @override
  _OrderListPageState createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage>{

  List<Select_Order> _selectOrder;
  String user_id;
  String skill;


  @override
  void dispose(){
    super.dispose();
  }

  @override
  void initState(){
    user_id = Get.parameters['id'];
    skill = Get.parameters['skill'];
    _selectOrder = [];
    _getSelectOrder();
    print('$user_id');
    print('$skill');
    super.initState();
  }

  //견적서 불러오기
  _getSelectOrder(){
    Order_Select_Data.getOrderSelect(user_id, skill).then((selectOrder){
      setState(() {
        _selectOrder = selectOrder;
      });
    });
  }

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
          margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
          width: Get.width,
          height: Get.height,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: _selectOrder.length,
            itemBuilder: (BuildContext context, int index){
              return Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: const Offset(
                        1.0,
                        1.0,
                      ),
                      blurRadius: 20.0,
                      spreadRadius: 1.0,
                    )
                  ],
                ),
                width: Get.width,
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: 200.0,
                    width: Get.width,
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('No.${_selectOrder[index].user_id}${_selectOrder[index].order_date.split(' ')[0]}', style:
                          TextStyle(
                            fontSize: 13.0,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('작업 희망일', style:
                              TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            SizedBox(width: 3.0,),
                            Container(
                              color: Colors.blue,
                              child: Text(_selectOrder[index].service_date, style:
                                TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                            ),
                            SizedBox(width: 10.0,),
                            Text('작업 지역', style:
                              TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            SizedBox(width: 3.0,),
                            Container(
                              color: Colors.redAccent,
                              child: Text(_selectOrder[index].service_date, style:
                                TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('작업 타입 : ${_selectOrder[index].service_type}'),
                            SizedBox(width: 10.0,),
                            Text('작업 크기 : ${_selectOrder[index].service_size}'),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                          height: 50.0,
                          width: Get.width,
                          padding: EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.5),
                          ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Text('${_selectOrder[index].service_detail}', softWrap: false, overflow: TextOverflow.ellipsis, maxLines: 2,),
                          )
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                              onPressed: (){
                                Get.defaultDialog(middleText: "견적서를 보내시겠습니까?");
                              },
                              child: Text('견적서 보내기 | 300포인트 차감')
                          ),
                        )
                      ],
                    )
                  ),
                ),
              );
            },
          )
        ),
      ),
    );
  }
}