import 'dart:convert';
import 'package:figma_app/App/Authenticate/Login.dart';

import '../Home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class OnBoarding_03 extends StatefulWidget {
  const OnBoarding_03({super.key});

  @override
  State<OnBoarding_03> createState() => _OnBoarding_03State();
}

TextEditingController emailController = TextEditingController();

class _OnBoarding_03State extends State<OnBoarding_03> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      width: 344,
                      height: 423.73,
                      child: Image.asset('assets/images/Group 177.png'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Create a trip and get offers  ',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 252,
                      height: 73,
                      child: Center(
                        child: Text(
                          'Fellow4U helps you save time and get offers from hundred local guides that suit your trip.',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Image.asset('assets/images/Group 2.png'),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "GET STARTED",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      width: 135,
                      height: 5,
                      color: Colors.black,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
