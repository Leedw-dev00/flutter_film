import 'package:flutter/material.dart';
import 'package:flutter_film/datas/select_order_data.dart';
import 'package:flutter_film/models/select_order_model.dart';
import 'package:get/get.dart';
import 'package:lazy_loading_list/lazy_loading_list.dart';


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
            Get.back();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.wifi_protected_setup, color: Colors.black87,),
            onPressed: (){
              _getSelectOrder();
            },
          ),
        ],
      ),
      backgroundColor: Color(0xFFf0f0f0),
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: _selectOrder.length,
            itemBuilder: (BuildContext context, int index){
              return LazyLoadingList(
                initialSizeOfItems: 2,
                index: index,
                hasMore: true,
                loadMore: () => print('Loading More'),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  padding: EdgeInsets.all(5.0),
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: const Offset(
                          5.0,
                          1.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 1.0,
                      )
                    ],
                  ),
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
                              Text(_selectOrder[index].service_date),
                              SizedBox(width: 10.0,),
                              Text('작업 지역', style:
                                TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              SizedBox(width: 3.0,),
                              Text(_selectOrder[index].service_area),
                            ],
                          ),
                          SizedBox(height: 5.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('작업 타입', style:
                                TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.0
                                ),
                              ),
                              SizedBox(width: 3.0,),
                              Text('${_selectOrder[index].service_type}',

                              ),
                              SizedBox(width: 10.0,),
                              Text('작업 크기 : ${_selectOrder[index].service_size}', style:
                                TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13.0
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Container(
                            height: 50.0,
                            width: Get.width,
                            padding: EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              border: Border.all(width: 0.5, color: Colors.grey),
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
                                  Get.toNamed('/sendEstimate/true?user_id=${_selectOrder[index].user_id}&&order_date=${_selectOrder[index].order_date}&&pro_id=$user_id');
                                },
                                child: Text('견적서 보내기', style: TextStyle(fontWeight: FontWeight.bold),)
                            ),
                          )
                        ],
                      )
                    ),
                )
              );
            },
          )
        ),
      ),
    );
  }
}