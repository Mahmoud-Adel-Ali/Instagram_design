// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram/constant/colors.dart';
import 'package:instagram/pages/signIn.dart';
import 'package:instagram/widget/decrationOfTextFeild.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool hiddinPassword = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor:
          screenWidth >= 60 ? webBackgroundColor : mobileBackgroundColor,
      appBar: AppBar(
        title: Text(
          "Register",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: mobileBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: screenWidth >= 600 ? screenWidth / 2 : double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(children: [
                    Container(
                      height: 220,
                      width: 200,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.amber),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/img/th.jpeg"),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_a_photo,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(height: 30),
                  TextFormField(
                    // controller: userName,
                    maxLength: 30,
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    decoration: decorationTextfield.copyWith(
                      hintText: "Enter Your Name : ",
                      suffix: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    // controller: age,
                    maxLength: 2,
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    decoration: decorationTextfield.copyWith(
                      hintText: "Enter Your age : ",
                      suffix: Icon(Icons.numbers),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    // controller: jop,
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    decoration: decorationTextfield.copyWith(
                      hintText: "Enter Your jop : ",
                      suffix: Icon(Icons.title),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    validator: (value) {
                      return value!.contains(RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))
                          ? null
                          : "Enter a valid email";
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    // controller: emailAddress,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    decoration: decorationTextfield.copyWith(
                      hintText: "Enter Your Email : ",
                      suffix: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    validator: (value) {
                      return value!.length < 8
                          ? "Enter a valid password : at least 8 chracter"
                          : null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    // controller: password,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: hiddinPassword,
                    decoration: decorationTextfield.copyWith(
                      hintText: "Enter Your Password : ",
                      suffix: IconButton(
                        onPressed: () {
                          setState(() {
                            hiddinPassword = !hiddinPassword;
                          });
                        },
                        icon: hiddinPassword
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Register",
                      style: TextStyle(fontSize: 25,color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color.fromARGB(255, 122, 3, 3))),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "if you have acount ",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => SignIn()),
                              ),
                            );
                          },
                          child: Text(
                            "signIn",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 25,
                            ),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
