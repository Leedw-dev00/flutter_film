import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_film/datas/userCheck_data.dart';
import 'package:flutter_film/models/userCheck_model.dart';
import 'dart:async';
// import 'package:flutter_sms/flutter_sms.dart';
import 'package:get/get.dart';
import 'package:telephony/telephony.dart';

onBackgroundMessage(SmsMessage message) {
  debugPrint("onBackgroundMessage called");
}

class SmsPage extends StatefulWidget{
  @override
  _SmsPageState createState() => _SmsPageState();
}

class _SmsPageState extends State<SmsPage>{

  bool _isLoading;
  bool _isChecked = false;
  bool _isAgree = false;
  List<User_Check> _user_info;
  String pro_id;
  String user_id;
  String order_id;

  //telephony
  String _message = "";
  final telephony = Telephony.instance;


  void dispose(){
    super.dispose();
  }

  @override
  void initState(){
    super.initState();
    pro_id = Get.parameters['id'];
    user_id = Get.parameters['user_id'];
    order_id = Get.parameters['order_id'];
    print(order_id);
    _isLoading = false;
    _user_info = [];
    _getUserInfo();
    initPlatformState();
  }



  _getUserInfo(){
    UserCheck_Data.getUserCheck(pro_id).then((user_info){
      setState(() {
        _user_info = user_info;
      });
      if(user_info.length == 0){
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

  final SmsSendStatusListener listener = (SendStatus status) {
    // Handle the status
  };

  onMessage(SmsMessage message) async {
    setState(() {
      _message = message.body ?? "Error reading message body.";
    });
  }

  onSendStatus(SendStatus status) {
    setState(() {
      _message = status == SendStatus.SENT ? "sent" : "delivered";
    });
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {


    final bool result = await telephony.requestPhoneAndSmsPermissions;

    if (result != null && result) {
      telephony.listenIncomingSms(
          onNewMessage: onMessage, onBackgroundMessage: onBackgroundMessage);
    }

    if (!mounted) return;
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('의뢰하기', style:
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("'자세한 견적은 해당 전문가와 SMS 상담을 통해 진행할 수 있습니다'", textAlign: TextAlign.center, style:
                TextStyle(
                  fontSize: 20.0,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  width: Get.width,
                  height: Get.height*0.6,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5),
                  ),
                  child: Column(
                    children: <Widget>[
                      ExpandablePanel(
                        theme: const ExpandableThemeData(
                          headerAlignment: ExpandablePanelHeaderAlignment.center,
                        ),
                        header: Text('- 개인정보 이용약관 [필수]', style: TextStyle(fontSize: 13.0, color: Colors.redAccent)),
                        collapsed: Text('개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부', softWrap: true, maxLines: 5, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 11.0, color: Colors.grey), ),
                        expanded: Text('개인개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부개인정보 이용에 대한 동의 여부', style: TextStyle(fontSize: 11.0, color: Colors.grey), ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Checkbox(
                              value: _isAgree,
                              onChanged: (value) {
                                setState(() {
                                  _isAgree = value;
                                  _isChecked = false;
                                });
                              }
                          ),
                          Text('동의함'),
                          SizedBox(width: 30.0,),
                          Checkbox(
                              value: _isChecked,
                              onChanged: (value) {
                                setState(() {
                                  _isChecked = value;
                                  _isAgree = false;
                                });
                              }
                          ),
                          Text('동의하지 않음'),
                        ],
                      ),
                      SizedBox(height: 30.0,)
                    ],
                  )
                ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: (){
                        if(_isAgree == true){
                          Get.defaultDialog(
                              title: '',
                              titleStyle: TextStyle(fontSize: 0.0),
                              content: Container(
                                child: Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: IconButton(
                                        icon: Icon(Icons.close, color: Colors.black,),
                                        onPressed: (){Get.back();},
                                      ),
                                    ),
                                    SizedBox(height: 10.0,),
                                    Text('오전 9시 ~ 오후 6시 이외의 시간에는 전화 상담은 삼가해주세요', style:
                                    TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black54
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 15.0,),
                                    SizedBox(
                                      width: Get.width*0.3,
                                      child: ElevatedButton(
                                        onPressed: () async {
                                          print('성공');
                                          await telephony.openDialer(
                                              "${_user_info[0].phone_number}"
                                          );
                                        },
                                        child: Row(
                                          children: <Widget>[
                                            Icon(Icons.phone, color: Colors.blueAccent, size: 20.0,),
                                            SizedBox(width: 2.0,),
                                            Text('전화걸기', style:
                                            TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.blueAccent,
                                            ),
                                              textAlign: TextAlign.center,

                                            ),
                                          ],
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          side: BorderSide(
                                            width: 1.0,
                                            color: Colors.blueAccent,
                                          ),
                                          elevation: 0.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          );
                        }else{
                          Get.snackbar('개인정보 이용동의', '개인정보 이용에 동의하지 않으면 전문가에게 SMS 보내기를 사용할 수 없습니다. 관리자에게 문의하여 전문가 견적을 문의하세요');
                        }

                      },
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.phone, color: Colors.blueAccent, size: 20.0,),
                          SizedBox(width: 2.0,),
                          Text('전화걸기', style:
                            TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.blueAccent,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(
                          width: 1.0,
                          color: Colors.blueAccent,
                        ),
                        elevation: 0.0,
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    ElevatedButton(
                      onPressed: () async {
                        if(_isAgree == true){
                          print('성공');
                          await telephony.sendSms(
                            to: "${_user_info[0].phone_number}",
                            message: "[필름반장]\n${user_id.substring(0,5)}****님이 시공전문가님에게 작업 의뢰를 요청하였습니다.\nSMS를 통해 자세한 상담을 진행해주세요.",
                            statusListener: listener,
                          );
                          Get.snackbar('SMS 전송완료', "SMS 상담 요청서를 해당 전문가에게 전송하였습니다.");
                        }else{
                          Get.snackbar('개인정보 이용동의', '개인정보 이용에 동의하지 않으면 전문가에게 SMS 보내기를 사용할 수 없습니다. 관리자에게 문의하여 전문가 견적을 문의하세요');
                        }
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.sms, color: Colors.blueAccent, size: 18.0,),
                          SizedBox(width: 2.0,),
                          Text('SMS보내기', style:
                            TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.blueAccent,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(
                          width: 1.0,
                          color: Colors.blueAccent,
                        ),
                        elevation: 0.0,
                      ),
                    )
                  ],
                ),

                SizedBox(height: 10.0,),
              ],
            ),


          ),

        )
    );
  }

  // void _send(){
  //   _sendSMS(["${_user_info[0].phone_number}"]);
  // }
}