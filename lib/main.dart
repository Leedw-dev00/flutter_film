import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_film/pages/ad_page.dart';
import 'package:flutter_film/pages/agree_apge.dart';
import 'package:flutter_film/pages/changephone_page.dart';
import 'package:flutter_film/pages/changepw_page.dart';
import 'package:flutter_film/pages/customermy_page.dart';
import 'package:flutter_film/pages/deposit_page.dart';
import 'package:flutter_film/pages/matching_page.dart';
import 'package:flutter_film/pages/noti_page.dart';
import 'package:flutter_film/pages/notice_page.dart';
import 'package:flutter_film/pages/orderList_Customer_page.dart';
import 'package:flutter_film/pages/orderList_dir_page.dart';
import 'package:flutter_film/pages/profileP_edit_page.dart';
import 'package:flutter_film/pages/profileP_page.dart';
import 'package:flutter_film/pages/rating_page.dart';
import 'package:flutter_film/pages/register_page.dart';
import 'package:flutter_film/pages/request_page.dart';
import 'package:flutter_film/pages/review_page.dart';
import 'package:flutter_film/pages/search_page.dart';
import 'package:flutter_film/pages/search_pw_page.dart';
import 'package:flutter_film/pages/search_result_page.dart';
import 'package:flutter_film/pages/send_estimate_page.dart';
import 'package:flutter_film/pages/sms_page.dart';
import 'package:kakao_flutter_sdk/all.dart';
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

Future<void> backgroundHandler(RemoteMessage message) async {
  print(message.data.toString());
  print(message.notification.title);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  KakaoContext.clientId = "c99170a34dc9eed524501824ea669455";
  KakaoContext.javascriptClientId = "2eced4d5fcf0821c6e5526e0dbfac048";
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
        GetPage(
          name:'/changeph/:param',
          page: () => ChangePage(),
        ),
        GetPage(
          name:'/changepw/:param',
          page: () => ChangePW_Page(),
        ),
        GetPage(
          name:'/searchid/:param',
          page: () => SearchPage(),
        ),
        GetPage(
          name:'/searchpw/:param',
          page: () => SearchPWPage(),
        ),
        GetPage(
          name:'/noti/',
          page: () => NotiPage(),
        ),
        GetPage(
          name:'/searchResult/:param',
          page: () => SearchResultPage(),
        ),
        GetPage(
        name:'/dir_orderList/:param',
        page: () => Dir_OrderListPage(),
        ),
        GetPage(
          name:'/register/:param',
          page: () => RegisterPage(),
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
  void initState(){
    super.initState();
    FirebaseMessaging.instance.getInitialMessage();
//firebase message 초기화

    FirebaseMessaging.onMessage.listen((message) {
      if (message.notification != null) {
        String title = message.notification.title;
        String body = message.notification.body;
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: ListTile(
              title: Text(title),
              subtitle: Text(body),
            ),
          )
        );
      }
    });
//앱 실행중일때

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      if (message.notification != null) {
        String title = message.notification.title;
        String body = message.notification.body;
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: ListTile(
                title: Text(title),
                subtitle: Text(body),
              ),
            ));
      }
    });
//알람을 클릭했을때

    FirebaseMessaging.onBackgroundMessage(backgroundHandler);
//앱이 백그라운드에서 실행중일때
  }


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