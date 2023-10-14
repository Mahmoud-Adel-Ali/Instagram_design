// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:instagram/pages/register.dart';
import 'package:instagram/pages/signIn.dart';
import 'package:instagram/responsive/mobileScreen.dart';
import 'package:instagram/responsive/responsive.dart';
import 'package:instagram/responsive/webScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: SignIn(),
      
      // Responsive(
      //   myWebScreen: WebScreen(),
      //   myMobileScreen: MobileScreen(),
      // ),
    );
  }
}
