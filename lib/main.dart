import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hotel_des/pages/fogotpass_page.dart';
import 'package:hotel_des/pages/login_page.dart';
import 'package:hotel_des/onboarding/onboarding_1.dart';
import 'package:hotel_des/onboarding/onboarding_2.dart';
import 'package:hotel_des/onboarding/onboarding_3.dart';
import 'package:hotel_des/onboarding/onboarding_4.dart';
import 'package:hotel_des/pages/newpass_page.dart';
import 'package:hotel_des/pages/register_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: LoginPage(),
    // home: EasySplashScreen(logo: Image.asset('acess/logo.png'),
    // logoWidth: 150,
    // showLoader: false,
    // backgroundColor: Colors.white,
    // navigator: LoginPage(),
    // durationInSeconds: 3,
    // loaderColor: Colors.red,
    // ),
    routes: {
      '/register': (context) => RegisterPage(), // Khai báo đường dẫn đến trang đăng ký
        '/login': (context) => LoginPage(), // Khai báo đường dẫn đến trang đăng nhập
    },
    );
  }
}
      // home: RegisterPage(),
