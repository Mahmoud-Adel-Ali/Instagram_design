import 'package:flutter/material.dart';
import 'package:instagram/constant/colors.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor:
          screenWidth >= 600 ? webBackgroundColor : mobileBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:
          screenWidth >= 600 ? webBackgroundColor : mobileBackgroundColor,
        title: Container(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          // color: Colors.grey,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(5)
          ),
          width: screenWidth/2,
          child: TextFormField(
            decoration: const InputDecoration(
                hintText: "🪕 search bout frinds",
                hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
          ),
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.black,
          width: screenWidth/2,
        ),
      ),
    );
  }
}
