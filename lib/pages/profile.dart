// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram/constant/colors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List links = [
    "assets/img/mm.jpg",
    "assets/img/mm.jpg",
    "assets/img/mm.jpg",
    
  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:
          screenWidth >= 60 ? webBackgroundColor : mobileBackgroundColor,
      appBar: screenWidth >= 600
          ? null
          : AppBar(
              backgroundColor: screenWidth >= 60
                  ? webBackgroundColor
                  : mobileBackgroundColor,
              title: Text(
                "Mahmoud",
                style: TextStyle(color: Colors.white),
              ),
            ),
      body: SafeArea(
        child: Container(
          // width: screenWidth >= 600 ? 600:double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(3),
          ),
          margin: screenWidth >= 600
              ? EdgeInsets.symmetric(horizontal: screenWidth / 5, vertical: 3)
              : null,

          child: SingleChildScrollView(
            child: Column(
              children: [
                screenWidth >= 600
                    ? Container(
                        width: double.infinity,
                        margin: EdgeInsets.all(20),
                        child: Text(
                          "Mahmoud",
                          style: TextStyle(color: Colors.white),
                        ))
                    : SizedBox(),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      margin: EdgeInsets.only(left: 40),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://avatars.githubusercontent.com/u/141450980?v=4"),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Posts",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          SizedBox(width: 17),
                          Column(
                            children: [
                              Text(
                                "8",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          SizedBox(width: 17),
                          Column(
                            children: [
                              Text(
                                "15",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Following",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 25),
                  child: Text(
                    "Nice & boy",
                    style: TextStyle(color: Color.fromARGB(208, 255, 255, 255)),
                  ),
                ),
                SizedBox(height: 20),
                Divider(thickness: screenWidth >= 600 ? 0.3 : 1),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 45,
                        width: 136,
                        decoration: BoxDecoration(
                            color: Colors.black45,
                            border: Border.all(color: Colors.grey, width: 1)),
                        child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                            label: Text(
                              "Edit Profile",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 45,
                        width: 136,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 148, 0, 0),
                            border: Border.all(color: Colors.grey, width: 1)),
                        child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.logout,
                              color: Colors.white,
                            ),
                            label: Text(
                              "Log out",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(thickness: screenWidth >= 600 ? 0.3 : 1),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 500,
                  width: double.infinity,
                  // color: Colors.amber,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 2 / 2,
                      ),
                      itemCount: links.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(links[index]));
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
