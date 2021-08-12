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
          height: 300.0,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: _selectOrder.length,
            itemBuilder: (BuildContext context, int index){
              return Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    border: Border.all(width: 0.5)
                ),
                width: Get.width,
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: 60.0,
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
                        Container(
                          child: Text('${_selectOrder[index].}'),
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