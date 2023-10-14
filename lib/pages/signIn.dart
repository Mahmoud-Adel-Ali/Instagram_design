import 'package:flutter/material.dart';
import 'package:instagram/constant/colors.dart';
import 'package:instagram/pages/register.dart';
import 'package:instagram/widget/decrationOfTextFeild.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool hiddinPassword = false;
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:
          screenWidth >= 600 ? webBackgroundColor : mobileBackgroundColor,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 48, 48, 48),
        title: const Text(
          "Sign in",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(22),
            width: screenWidth >= 600 ? screenWidth / 2 : double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                TextFormField(
                  // controller: emailAddress,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  decoration: decorationTextfield.copyWith(
                    hintText: "Enter Your Email : ",
                    suffix: const Icon(Icons.email),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  // controller: password,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: hiddinPassword,
                  decoration: decorationTextfield.copyWith(
                    hintText: "Enter Your Password : ",
                    suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          hiddinPassword = !hiddinPassword;
                        });
                      },
                      icon: !hiddinPassword
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "forgot password",
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 67, 0, 0))),
                  child: const Text(
                    "sign in",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "if you don't have acount ",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => Register()),
                          ),
                        );
                      },
                      child: const Text(
                        "register",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
