import 'package:flutter/material.dart';
import 'package:flutter_film/pages/ad_page.dart';
import 'package:flutter_film/pages/agree_apge.dart';
import 'package:flutter_film/pages/customermy_page.dart';
import 'package:flutter_film/pages/deposit_page.dart';
import 'package:flutter_film/pages/matching_page.dart';
import 'package:flutter_film/pages/notice_page.dart';
import 'package:flutter_film/pages/orderList_Customer_page.dart';
import 'package:flutter_film/pages/profileP_edit_page.dart';
import 'package:flutter_film/pages/profileP_page.dart';
import 'package:flutter_film/pages/rating_page.dart';
import 'package:flutter_film/pages/registerC_page.dart';
import 'package:flutter_film/pages/request_page.dart';
import 'package:flutter_film/pages/review_page.dart';
import 'package:flutter_film/pages/send_estimate_page.dart';
import 'package:flutter_film/pages/sms_page.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:flutter_film/pages/login_page.dart';
import 'package:flutter_film/pages/main_page.dart';
import 'package:flutter_film/pages/promy_page.dart';
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
          name: '/profilePPage/:param',
          page: () => ProfilePPage(),
        ),
        GetPage(
          name: '/profilePEditPage/:param',
          page: () => ProfileP_EditPage(),
        ),
        GetPage(
          name: '/orderListPage',
          page: () => OrderListPage(),
        ),
        GetPage(
          name: '/pointPage/:param',
          page: () => PointPage(),
        ),
        GetPage(
          name: '/proMyPage/:param',
          page: () => ProMyPage(),
        ),
        GetPage(
          name: '/customerMyPage/:param',
          page: () => CustomerMyPage(),
        ),
        GetPage(
          name: '/loginPage',
          page: () => LoginPage(),
        ),
        GetPage(
          name: '/registerProfilePage/:param',
          page: () => RegisterProfilePage(),
        ),
        GetPage(
          name:'/profilePage/:param',
          page: () => ProfilePage(),
        ),
        GetPage(
          name:'/registerCustomer/:param',
          page: () => RegisterCPage(),
        ),
        GetPage(
          name:'/orderList/:param',
          page: () => OrderListPage(),
        ),
        GetPage(
          name:'/sendEstimate/:param',
          page: () => SendEstimate_Page(),
        ),
        GetPage(
          name:'/deposit/:param',
          page: () => DepositPage(),
        ),
        GetPage(
          name:'/customerList/:param',
          page: () => CustomerOrderListPage(),
        ),
        GetPage(
          name:'/matching/:param',
          page: () => MatchingPage(),
        ),
        GetPage(
          name:'/rating/:param',
          page: () => RatingPage(),
        ),
        GetPage(
          name:'/review/:param',
          page: () => ReviewPage(),
        ),
        GetPage(
          name:'/request/:param',
          page: () => RequestPage(),
        ),
        GetPage(
          name:'/sms/:param',
          page: () => SmsPage(),
        ),
        GetPage(
          name:'/ad/:param',
          page: () => AdPage(),
        ),
        GetPage(
          name:'/notice/:param',
          page: () => NoticePage(),
        ),
        GetPage(
          name:'/agree/:param',
          page: () => AgreePage(),
        ),


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
        duration: 3000,
        imageSize: 70,
        imageSrc: 'assets/images/logo.gif',
        backgroundColor: Colors.white,
      )
    );

  }
}