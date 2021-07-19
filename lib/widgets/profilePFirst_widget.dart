import 'package:flutter/material.dart';

class ProfileP_First extends StatefulWidget{
  @override
  _ProfileP_FirstState createState() => _ProfileP_FirstState();
}

class _ProfileP_FirstState extends State<ProfileP_First>{
  @override
  Widget build(BuildContext context) {
    return Container(

      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset('assets/images/pro.jpg', height: 65.0, width: 65.0, fit: BoxFit.cover,),
          ),
          SizedBox(width: 20.0,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('인테리어', style: TextStyle(fontSize: 10.0,),),
              SizedBox(height: 1.0,),
              Text('디올디 컴퍼티', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700),),
              SizedBox(height: 5.0,),
              Row(
                children: <Widget>[
                  Icon(Icons.star, color: Color(0xFFFEC107), size: 13.0,),
                  Text('4.7', style: TextStyle(fontSize: 12.0),)
                ],
              ),
            ],
          ),
          Spacer(),

          SizedBox(
            width: 75.0,
            height: 25.0,
            child: ElevatedButton(
              child: Text('신청하기', style:
              TextStyle(
                  fontSize: 11.0,
                  color: Color(0xFF398FE2)
              ),
                textAlign: TextAlign.center,
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                side: BorderSide(
                  width: 1.0, color: Color(0xFF398FE2),
                ),
                elevation: 0.0,
              ),
              onPressed: (){
                print('신청하기');
              },
            ),
          ),
        ],
      ),
    );
  }
}