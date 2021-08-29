import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazy_loading_list/lazy_loading_list.dart';
import '../datas/pro_point_data.dart';
import '../models/pro_point_model.dart';


class DepositPage extends StatefulWidget {

  @override
  _DepositPageState createState() => _DepositPageState();
}

class _DepositPageState extends State<DepositPage> {


  String _userId;

  List<Pro_Point> _pro_point;
  bool _isLoading;

  @override
  void dispose(){
    super.dispose();
  }

  @override
  void initState(){
    _pro_point = [];
    _userId = Get.parameters['pro_id'];
    _getProPoint();
    _isLoading = false;
    super.initState();
  }

  _getProPoint(){
    ProPoint_Data.getProPointInfo(_userId).then((pro_point){
      setState(() {
        _pro_point = pro_point;
      });
      if(pro_point.length == 0){
        _isLoading = false;
      }else{
        setState(() {
          _isLoading = true;
        });
      }
    });
  }

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
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child:
          _isLoading
              ?
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '무통장 입금',
                        style: TextStyle(
                            fontSize:15,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Container(
                        padding:const EdgeInsets.only(left:20),
                        margin:const EdgeInsets.only(top:15),
                        width: 350,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 0.5, color: Color(0xFF707070)), // 박스 테두리 만들기
                          borderRadius: BorderRadius.circular(10), //박스 둥글게 만들기
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '계좌번호 (우리은행 / 한솔 컴퍼니)',
                              style: TextStyle(
                                fontSize:16,
                              ),
                            ),
                            SizedBox(height:10),
                            Text(
                              '1002-076-0170501',
                              style: TextStyle(
                                fontSize:16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                  flex: 8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20.0,),
                      Text('포인트 사용 내역', style:
                      TextStyle(
                          fontSize:15,
                          fontWeight: FontWeight.bold
                      ),
                      ),
                      SizedBox(height: 15.0,),
                      Container(
                          width: Get.width,
                          height: 400.0,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: _pro_point.length,
                            itemBuilder: (BuildContext context, int index){
                              return LazyLoadingList(
                                initialSizeOfItems: 5,
                                index: index,
                                hasMore: true,
                                loadMore: () => print('Loading More'),
                                child: Container(
                                  width: Get.width,
                                  height: 100.0,
                                  margin: EdgeInsets.only(bottom: 10.0),
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(width: 0.1)
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('${_pro_point[index].date}', style:
                                      TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400
                                      ),
                                      ),
                                      Spacer(),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text('${_pro_point[index].point_detail}', style:
                                          TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          ),
                                          int.parse('${_pro_point[index].point_info}') > 0
                                              ?
                                          Text('${_pro_point[index].point_info}', style:
                                          TextStyle(
                                              color: Colors.blue,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold
                                          ),
                                          )
                                              :
                                          Text('${_pro_point[index].point_info}', style:
                                          TextStyle(
                                              color: Colors.red,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold
                                          ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                    ],
                                  ),
                                ),
                              );
                            },
                          )
                      ),
                    ],
                  )
              ),

            ],
          )
              :CircularProgressIndicator(),
        ),
      ),
    );
  }
}
