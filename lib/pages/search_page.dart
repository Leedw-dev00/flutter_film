import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPage extends StatefulWidget{
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>{

  String searchContent;
  TextEditingController phController;
  TextEditingController nameController;


  @override
  void initState() {
    super.initState();
    searchContent = Get.parameters['content'];
    phController = TextEditingController();
    nameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('$searchContent 찾기', style:
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
      backgroundColor: Colors.white,
      body: Container(
        height: Get.height*0.9,
        width: Get.width,
        padding: EdgeInsets.all(20.0),
        child:
        searchContent == "ID"
        ?
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 100.0,),
            Text('이름 / 회사이름'),
            SizedBox(height: 20.0,),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                fillColor: Color(0xFFF8F8F8),
                filled: true,
                labelText: '이름 / 회사이름',
                labelStyle: TextStyle(fontSize: 11.0),
                hintText: "가입 당시 입력한 이름(회사이름)을 입력해주세요",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0,),
            Text('전화번호'),
            SizedBox(height: 20.0,),
            TextField(
              keyboardType: TextInputType.number,
              controller: phController,
              decoration: InputDecoration(
                fillColor: Color(0xFFF8F8F8),
                filled: true,
                labelText: '휴대폰 번호',
                labelStyle: TextStyle(fontSize: 11.0),
                hintText: "( -를 제외하고 입력해주세요 )",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 50.0,),
            Center(
              child: SizedBox(
                width: Get.width*0.3,
                height: 40.0,
                child: ElevatedButton(
                    onPressed: (){},
                    child: Text('ID 찾기', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),)
                ),
              ),
            )
          ],
        )
        :
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 100.0,),
            Text('ID'),
            SizedBox(height: 20.0,),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                fillColor: Color(0xFFF8F8F8),
                filled: true,
                labelText: 'ID',
                labelStyle: TextStyle(fontSize: 11.0),
                hintText: "ID를 입력해주세요",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0,),
            Text('전화번호'),
            SizedBox(height: 20.0,),
            TextField(
              keyboardType: TextInputType.number,
              controller: phController,
              decoration: InputDecoration(
                fillColor: Color(0xFFF8F8F8),
                filled: true,
                labelText: '휴대폰 번호',
                labelStyle: TextStyle(fontSize: 11.0),
                hintText: "( -를 제외하고 입력해주세요 )",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 50.0,),
            Center(
              child: SizedBox(
                width: Get.width*0.3,
                height: 40.0,
                child: ElevatedButton(
                    onPressed: (){},
                    child: Text('PW 찾기', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),)
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}