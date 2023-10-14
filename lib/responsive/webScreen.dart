// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/constant/colors.dart';
import 'package:instagram/pages/add_post.dart';
import 'package:instagram/pages/profile.dart';
import 'package:instagram/pages/search.dart';

import '../pages/favorit.dart';
import '../pages/home.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  final PageController _pageController = PageController();
  int pageIndex = 0;
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: webBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: SvgPicture.asset(
          "assets/img/instagram.svg",
          color: Colors.white,
        ),
        
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 0;
                _pageController.jumpToPage(0);
              });
            },
            icon: Icon(
              Icons.home,
              color: pageIndex == 0 ? primaryColor : secondaryColor,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 1;
                _pageController.jumpToPage(1);
              });
            },
            icon: Icon(
              Icons.search,
              color: pageIndex == 1 ? primaryColor : secondaryColor,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 2;
                _pageController.jumpToPage(2);
              });
            },
            icon: Icon(
              Icons.favorite,
              color: pageIndex == 2 ? primaryColor : secondaryColor,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 3;
                _pageController.jumpToPage(3);
              });
            },
            icon: Icon(
              Icons.add_circle,
              color: pageIndex == 3 ? primaryColor : secondaryColor,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 4;
                _pageController.jumpToPage(4);
              });
            },
            icon: Icon(
              Icons.person,
              color: pageIndex == 4 ? primaryColor : secondaryColor,
            ),
          ),
        ],
      ),
      body: PageView(
        onPageChanged: (index) {},
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          Home(),
          Search(),
          Favorit(),
          AddPost(),
          Profile(),
        ],
      ),
    );
  }
}
