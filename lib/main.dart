import 'package:flutter/material.dart';
import 'package:flutter_film/pages/profileP_page.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:flutter_film/pages/login_page.dart';
import 'package:flutter_film/pages/main_page.dart';
import 'package:flutter_film/pages/my_page.dart';
import 'package:flutter_film/pages/orderList_page.dart';
import 'package:flutter_film/pages/order_page.dart';
import 'package:flutter_film/pages/point_page.dart';
import 'package:flutter_film/pages/profile_page.dart';
import 'package:flutter_film/pages/registerProfile_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      getPages: [
        GetPage(
          name: '/main/:param',
          page: () => MainPage()
        ),

        //MainPage
        GetPage(
          name: '/order/:param',
          page: () => OrderPage(),
        ),
        GetPage(
          name: '/profilePPage',
          page: () => ProfilePPage(),
        ),
        GetPage(
          name: '/orderListPage',
          page: () => OrderListPage(),
        ),
        GetPage(
          name: '/pointPage',
          page: () => PointPage(),
        ),
        GetPage(
          name: '/myPage/:param',
          page: () => MyPage(),
        ),
        GetPage(
          name: '/loginPage',
          page: () => LoginPage(),
        ),
        GetPage(
          name: '/registerProfilePage',
          page: () => RegisterProfilePage(),
        ),
        GetPage(
          name:'/profilePage/:param',
          page: () => ProfilePage(),
        )
      ]
    );
  }
}

class SplashPage extends StatefulWidget{
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SplashScreenView(
        home: MainPage(),
        duration: 5000,
        imageSize: 50,
        imageSrc: 'assets/images/logo.gif',
        backgroundColor: Colors.white,
      )
    );

  }
}