import 'dart:convert';
import 'package:figma_app/App/OnBoaring/OnBoarding_03.dart';

import '../Home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class OnBoarding_02 extends StatefulWidget {
  const OnBoarding_02({super.key});

  @override
  State<OnBoarding_02> createState() => _OnBoarding_02State();
}

TextEditingController emailController = TextEditingController();

class _OnBoarding_02State extends State<OnBoarding_02> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 92, 0, 0),
                      width: 347.55,
                      height: 466.16,
                      child: Image.asset('assets/images/Vector 8.png'),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(222, 100, 0, 0),
                      width: 91.26,
                      height: 39.57,
                      child: Image.asset('assets/images/Vector 5 (1).png'),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(41, 135, 0, 0),
                      width: 152.18,
                      height: 128.8,
                      child: Image.asset('assets/images/Group 98.png'),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(168, 128, 0, 0),
                      width: 153.61,
                      height: 136.68,
                      child: Image.asset('assets/images/Group 99.png'),
                    ),
                    Container(
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(35, 220, 0, 0),
                          width: 97.66,
                          height: 291.52,
                          child: Image.asset('assets/images/Group 101.png'),
                        ),
                      ),
                    )
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
                        'Many tours around the world  ',
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
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                          style: TextStyle(fontSize: 14),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OnBoarding_03()))
                        },
                        child: Container(
                          child: Text(
                            'SKIP',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    )
                  ],
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
