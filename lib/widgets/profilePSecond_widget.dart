import 'package:flutter/material.dart';

class ProfileP_Second extends StatefulWidget{
  @override
  _ProfileP_SecondState createState() => _ProfileP_SecondState();
}

class _ProfileP_SecondState extends State<ProfileP_Second>{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text('전문가 정보', style:
            TextStyle(
              color: Color(0XFF398FE2),
              fontWeight: FontWeight.w600,
              fontSize: 14.0
            ),
          ),
          SizedBox(height: 3.0,),
          SizedBox(
            child: Container(
              width: 60.0,
              height: 2.0,
              color: Color(0XFF398FE2),
            ),
          ),
          SizedBox(height: 30.0,),
          Text('소개', style:
            TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14.0
            ),
          ),
          SizedBox(height: 10.0,),
          Text('안녕하세요~ 한솔 컴퍼니입니다. 합리적인 가격으로 시공하겠습니다! 연락 주시면 자세한 견적 안내 도와드리겠습니다.', style:
            TextStyle(
                color: Colors.grey,
                fontSize: 13.0
            ),
          ),
          SizedBox(height: 20.0),
          Text('기본정보', style:
            TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14.0
            ),
          ),
          SizedBox(height: 10.0,),
          Text('서울 강동구에 위치\n연락 가능시간: 오전 9시 - 오후 10시', style:
            TextStyle(
                color: Colors.grey,
                fontSize: 13.0
            ),
          ),
          SizedBox(height: 20.0),
          Text('추가정보', style:
            TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14.0
            ),
          ),
          SizedBox(height: 10.0,),
          Text('경력 15년 이상\n직원수 5명\n사업자 등록 완료', style:
            TextStyle(
                color: Colors.grey,
                fontSize: 13.0
            ),
          ),

          SizedBox(height: 20.0),
          Text('사진정보', style:
            TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14.0
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset('assets/images/port1.jpg', width: 80.0, height: 80.0, fit: BoxFit.cover,),
                  ),
                  SizedBox(width: 10.0,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset('assets/images/port2.jpg', width: 80.0, height: 80.0, fit: BoxFit.cover,),
                  ),
                  SizedBox(width: 10.0,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset('assets/images/port3.jpg', width: 80.0, height: 80.0, fit: BoxFit.cover,),
                  ),
                  SizedBox(width: 10.0,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset('assets/images/port4.jpg', width: 80.0, height: 80.0, fit: BoxFit.cover,),
                  ),
                  SizedBox(width: 10.0,),ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset('assets/images/port5.jpg', width: 80.0, height: 80.0, fit: BoxFit.cover,),
                  ),
                  SizedBox(width: 10.0,),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}