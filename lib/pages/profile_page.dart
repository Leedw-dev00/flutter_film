import 'package:flutter/material.dart';
import 'package:flutter_film/datas/userCheck_data.dart';
import 'package:flutter_film/models/userCheck_model.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'package:path/path.dart';



class ProfilePage extends StatefulWidget{
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>{

  String _userId;
  String _isLogin;
  bool _isLoading;
  List<User_Check> _user_info;
  PickedFile _image;

  @override
  void dispose(){
    super.dispose();
  }

  @override
  void initState(){
    _user_info = [];
    _userId = Get.parameters['id'];
    _isLogin = Get.parameters['param'];
    _isLoading = false;
    _getUserInfo();
    super.initState();
  }

  _getUserInfo(){
    UserCheck_Data.getUserCheck(_userId).then((user_info){
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

  Future getImageGallery() async{
    var imageFile = await ImagePicker.platform.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = imageFile;
    });
    upload(File(_image.path));
    print('getImageGallery Success');
  }

  Future upload(File imageFile) async{
    var stream = new http.ByteStream(DelegatingStream.typed(imageFile.openRead()));
    var length = await imageFile.length();
    var uri = Uri.parse("https://d-grab.co.kr/film_pro_profile.php");

    var request = new http.MultipartRequest("POST", uri);
    var multipartFile = new http.MultipartFile("image", stream, length, filename: basename(imageFile.path));

    request.files.add(multipartFile);
    request.fields['pro_id'] = _userId;

    var response = await request.send();

    if(response.statusCode == 200){
      print('Image Uploaded');
    }else{
      print('Upload Failed');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('프로필 설정', style:
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
          width: Get.width,
          child: _isLoading
            ?
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                SizedBox(height:15),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Spacer(),
                      Stack(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget> [
                          Positioned(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            child:
                            CircleAvatar(
                              backgroundImage:
                              _image == null
                              ?
                              NetworkImage('https://d-grab.co.kr/film_pro_profile/${_user_info[0].profile_img}',)
                              :
                              FileImage(File(_image.path)),
                              backgroundColor: Colors.white,
                              radius: 75,
                            ),
                          ),
                          Positioned(
                              bottom: 1,
                              right:1,
                              //mainAxisAlignment: MainAxisAlignment.center,
                              child:
                              IconButton(
                                icon: Icon(Icons.camera_alt, size:30.0, color: Colors.black,),
                                onPressed: (){
                                  print('프로필 이미지 변경');
                                  getImageGallery();
                                },
                              )
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                SizedBox(height:15),

                Container(
                  padding:const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                  width: Get.width,
                  color: Color(0xFFffffff),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '이름',
                        style: TextStyle(
                          fontSize:14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height:5),
                      Text(
                        _user_info[0].com_name,
                        style: TextStyle(
                          fontSize:14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height:5),

                Container(
                  padding:const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                  width: Get.width,
                  color: Color(0xFFffffff),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '이메일',
                        style: TextStyle(
                          fontSize:14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height:5),
                      Text(
                        _user_info[0].user_email,
                        style: TextStyle(
                          fontSize:14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height:5),

                Container(
                  padding:const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                  color: Color(0xFFffffff),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '휴대전화',
                            style: TextStyle(
                              fontSize:14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height:5),
                          Text(
                            '${_user_info[0].phone_number}',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize:14,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        child: Text('변경하기'),
                        onPressed: (){
                          print('핸드폰 변경');
                        },
                      )

                    ],
                  ),
                ),
                SizedBox(height: 30.0,),
                Column(
                  children: <Widget>[
                    GestureDetector(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      child:Container(
                        width: Get.width,
                        color: Color(0xFFffffff),
                        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                        child: Text(
                          '비밀번호 변경',
                          style: TextStyle(
                            fontSize:14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      onTap: (){
                        //Get.to();
                        print('비밀번호 변경');
                      },
                    ),
                    SizedBox(height: 5.0,),
                    GestureDetector(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      child:Container(
                        width: Get.width,
                        color: Color(0xFFffffff),
                        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                        child: Text(
                          '계정탈퇴',
                          style: TextStyle(
                            fontSize:14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      onTap: (){
                        //Get.to();
                        print('계정 탈퇴');
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20.0,)
              ],
            )
            :
            CircularProgressIndicator(),
        ),
      ),
    );
  }
}