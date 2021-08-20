import 'package:flutter/material.dart';
import 'package:flutter_film/datas/register_estimate_data.dart';
import 'package:flutter_film/datas/register_pointinfo_data.dart';
import 'package:flutter_film/datas/select_estimate_data.dart';
import 'package:flutter_film/datas/update_order_status_data.dart';
import 'package:flutter_film/models/select_estimate_model.dart';
import 'package:get/get.dart';

class SendEstimate_Page extends StatefulWidget{
  @override
  _SendEstimate_PageState createState() => _SendEstimate_PageState();
}

class _SendEstimate_PageState extends State<SendEstimate_Page>{
  TextEditingController estimateController;
  String user_id;
  String order_date;
  String pro_id;
  String order_id;
  bool _isLoading;
  List<Select_Estimate> _selectEstimate;

  @override
  void dispose(){
    super.dispose();
  }

  @override
  void initState(){
    _selectEstimate = [];
    user_id = Get.parameters['user_id'];
    order_date = Get.parameters['order_date'];
    pro_id = Get.parameters['pro_id'];
    order_id = '$user_id${order_date.split(' ')[0]}';
    estimateController = TextEditingController();
    _getSelectEstimate();
    _isLoading = false;
    super.initState();
  }

  //견적 갯수 불러오기
  _getSelectEstimate(){
    Estimate_Select_Data.getEstimateSelect(order_id).then((selectEstimate){
      setState(() {
        _selectEstimate = selectEstimate;
      });
      if(selectEstimate.length == 0){
        setState(() {
          _isLoading = false;
        });
      }else{
        setState(() {
          _isLoading = true;
        });
      }
    });
  }

  _addEstimate(){
    RegisterEstimate_Data.addEstimate(order_id, user_id, pro_id, estimateController.text).then((result){
      if(result == 'success'){
        _addPointInfo();
        print('addRegister success');
      }else{
        print('addRegister fail');
      }
    });
  }

  _addPointInfo(){
    Register_PointInfo.addPointInfo(pro_id, '-300', '견적서 차감').then((result){
      if(result == 'success'){
        print('addpointInfo success');
        Get.back();
      }else{
        print('addpointInfo fail');
      }
    });
  }


  
  _updateOrderStatus(){
    UpdateOrderStatus_Data.updateOrderStatus(user_id, order_date).then((result){
      if('success' == result){
        print('삭제완료');
        Get.back();
      }else{
        print('네트워크 에러');
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
        title: Text('견적서 보내기', style:
          TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
        ),
      ),
      backgroundColor: Color(0xFFf0f0f0),
      body: SingleChildScrollView(
        child:
          _isLoading
          //_selectEstimate.isEmpty
          ?
          Container(
            width: Get.width,
            height: 550.0,
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: <Widget>[
                Text('견적을 보낸 전문가 수 : ${_selectEstimate[0].count} / 5', style:
                TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 20.0,),
                Container(
                    width: Get.width,
                    height: 400.0,
                    color: Color(0xFFf5f5f5),
                    child: TextField(
                      controller: estimateController,
                      maxLines: 20,
                      decoration: InputDecoration(
                        hintText: "작업 관련 내용 및 금액 등에 대한 상세한 내용을 입력해주세요",
                        hintStyle: TextStyle(
                            fontSize: 13.0
                        ),
                        fillColor: Color(0xFFf5f5f5),
                        filled: true,
                      ),
                    )
                ),
                SizedBox(height: 15.0,),
                ElevatedButton(
                    onPressed: (){
                      _addEstimate();
                    },
                    child: Text('견적서 보내기 | 300pt 차감', style: TextStyle(fontWeight: FontWeight.bold),))
              ],
            ),
          )
          :
          Container(
            height: Get.height*0.8,
            width: Get.width,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 200.0,
                width: Get.width,
                margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 0.2),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.warning_outlined, size: 60.0, color: Colors.red,),
                    SizedBox(height: 2.0,),
                    Text('마감 된 요청서입니다', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
                    Spacer(),
                    ElevatedButton(
                        onPressed: (){
                          _updateOrderStatus();
                        },
                        child:
                        Text('     돌아가기     ', style:
                        TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                        )
                    ),
                    SizedBox(height: 15.0,)
                  ],
                ),
              ),
            )
          ),
      ),
    );
  }
}