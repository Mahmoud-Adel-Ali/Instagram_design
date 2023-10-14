import 'package:flutter/material.dart';
import 'package:instagram/constant/colors.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:
          screenWidth >= 600 ? webBackgroundColor : mobileBackgroundColor,
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 3),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30)
          ),
          alignment: Alignment.center,
          width: screenWidth >= 600 ? screenWidth / 2 : double.infinity,
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.upload,
                size: 50,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
