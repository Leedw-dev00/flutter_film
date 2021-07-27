import 'package:flutter/material.dart';
import 'package:flutter_film/pages/order_page.dart';
import 'package:get/get.dart';


class Home_Banner extends StatefulWidget{
  @override
  _Home_BannerState createState() => _Home_BannerState();
}

class _Home_BannerState extends State<Home_Banner>{

  String _userId;

  @override
  void initState(){
    _userId = Get.parameters['id'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.4,
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.dstATop
            ),
            image: AssetImage('assets/images/back.png'),
          )
      ),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Image.asset('assets/images/rec.png', fit: BoxFit.cover,),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: <Widget>[
                  Spacer(),
                  SizedBox(height: 30.0,),
                  Text('인테리어 전문가로 배정 해드립니다', style:
                  TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700
                  ),
                  ),
                  Text('한 번의 견적으로 5명의 전문가를 추천해드려요', style:
                  TextStyle(
                      fontSize: 12.0,
                      color: Colors.black54,
                      fontWeight: FontWeight.w700
                  ),
                  ),
                  SizedBox(height: 25.0,),
                  ButtonTheme(
                    minWidth: 120,
                    height: 35.0,
                    child: RaisedButton(
                        color: Color(0xFF398FE2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                        child: Text('견적요청', style:
                        TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                        ),
                        ),
                        onPressed: (){
                          print('견적 보기');
                          Get.to(OrderPage());
                        }
                    ),
                  ),
                  Spacer(),
                ],
              )
          ),

        ],
      ),
    );
  }
}