import 'package:flutter/material.dart';
import 'package:flutter_film/widgets/profilePFirst_widget.dart';
import 'package:flutter_film/widgets/profilePSecond_widget.dart';
import 'package:flutter_film/widgets/profilePThird_widget.dart';

class ProfilePPage extends StatefulWidget{
  @override
  _ProfilePPageState createState() => _ProfilePPageState();
}

class _ProfilePPageState extends State<ProfilePPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('전문가', style:
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10.0,),
              ProfileP_First(),
              SizedBox(height: 10.0,),
              ProfileP_Second(),
              SizedBox(height: 10.0,),
              ProfileP_Third(),
              SizedBox(height: 20.0,),
              SizedBox(
                width: 100.0,
                height: 40.0,
                child: ElevatedButton(
                  child: Text('리뷰 더보기', style:
                  TextStyle(
                    fontSize: 13.0,
                    color: Color(0xFF398FE2),
                    fontWeight: FontWeight.w600
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
                    print('리뷰 더보기');
                  },
                ),
              ),
              SizedBox(height: 40.0,),
            ],
          ),
        ),
      ),
    );
  }
}