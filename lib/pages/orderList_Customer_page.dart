import 'package:flutter/material.dart';
import 'package:flutter_film/datas/customerlist_data.dart';
import 'package:flutter_film/models/customerlist_model.dart';
import 'package:get/get.dart';
import 'package:lazy_loading_list/lazy_loading_list.dart';

import 'matching_page.dart';


class CustomerListPage extends StatefulWidget{
  @override
  _CustomerListPageState createState() => _CustomerListPageState();
}

class _CustomerListPageState extends State<CustomerListPage>{

  String user_id;
  List<Customer_List> _customerList;

  @override
  void dispose(){
    super.dispose();
  }

  @override
  void initState(){
    user_id = Get.parameters['id'];
    _customerList = [];
    _getCustomerList();
    super.initState();
  }

  _getCustomerList(){
    CustomerList_Data.getCustomerList(user_id).then((customerList){
      setState(() {
        _customerList = customerList;
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
      ),
      backgroundColor: Color(0xFFf0f0f0),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: _customerList.length,
            itemBuilder: (BuildContext context, int index){
              return LazyLoadingList(
                  initialSizeOfItems: 2,
                  index: index,
                  hasMore: true,
                  loadMore: () => print('Loading More'),
                  child: Container(
                    margin: EdgeInsets.only(top: 40.0, left: 15.0, right: 15.0),
                    padding: EdgeInsets.all(5.0),
                    width: Get.width,
                    height: 220.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                      height: 100.0,
                      width: Get.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('서비스 희망 일자 : ${_customerList[index].service_date}', style:
                            TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(height: 10.0,),
                          Row(
                            children: <Widget>[
                              Text('서비스 지역 : ${_customerList[index].service_area}', style:
                                TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              SizedBox(width: 20.0,),
                              Text('서비스 크기 : ${_customerList[index].service_size}', style:
                                TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                            width: Get.width,
                            height: 70.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(width: 0.4, color: Colors.grey)
                            ),
                            child: Text('서비스 내용 : ${_customerList[index].service_detail}', style:
                              TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0,),
                          Align(
                            alignment: Alignment.center,
                            child: ElevatedButton(
                                child: Text('     견적 보기     ', style:
                                  TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                onPressed: (){
                                  Get.toNamed('/matching/true?id=${_customerList[index].user_id}&&date=${_customerList[index].service_date}');
                                }
                            ),
                          )
                        ],
                      )
                    )

                  )
              );
            },
          )
        ),
      ),
    );
  }
}