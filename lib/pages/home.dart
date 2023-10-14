// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/constant/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:
          screenWidth >= 600 ? webBackgroundColor : mobileBackgroundColor,
      // appBar: null,
      appBar: screenWidth >= 600
          ? null
          : AppBar(
              backgroundColor: Colors.black,
              title: SvgPicture.asset(
                "assets/img/instagram.svg",
                color: Colors.white,
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.message,
                      color: Colors.white,
                    )),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

      body: Container(
        width:screenWidth>=600? screenWidth /2:double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        margin:screenWidth >= 600? EdgeInsets.symmetric(horizontal: screenWidth / 4, vertical: 3):null,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.grey),
                            child: CircleAvatar(
                              radius: 22,
                              backgroundImage: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/141450980?v=4"),
                            ),
                          ),
                          SizedBox(width: 15),
                          Text(
                            "Mahmoud Adel",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "assets/img/mm.jpg",
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: double.infinity,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.message_outlined,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.send,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(2),
                  child: Text(
                    "10 Likes",
                    // textAlign: TextAlign.start,
                    style: TextStyle(
                        color: const Color.fromARGB(119, 255, 255, 255)),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(2),
                  child: Text(
                    "MAHMOUD ADEL ❤",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: const Color.fromARGB(119, 255, 255, 255),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(2),
                    child: Text(
                      "Veiw all 100 Comments",
                      style: TextStyle(
                        color: const Color.fromARGB(119, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  width: double.infinity,
                  child: Text(
                    "10 jun 2023",
                    style: TextStyle(
                      color: const Color.fromARGB(119, 255, 255, 255),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
