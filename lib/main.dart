import 'package:flutter/material.dart';
import 'package:shamo_app/UI/home/cart_page.dart';
import 'package:shamo_app/UI/home/mainpage.dart';
import 'package:shamo_app/UI/signin_page.dart';
import 'package:shamo_app/UI/signup_page.dart';
import 'package:shamo_app/UI/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/cart': (context) => CartPage()
      },
    );
  }
}
