import 'dart:convert';
import 'package:figma_app/App/Authenticate/Login.dart';
import 'package:figma_app/App/OnBoaring/OnBoarding_02.dart';
import 'package:figma_app/App/OnBoaring/OnBoarding_03.dart';


import 'package:flutter/material.dart';
import 'package:http/http.dart';

class OnBoarding_01 extends StatefulWidget {
  const OnBoarding_01({super.key});

  @override
  State<OnBoarding_01> createState() => _OnBoarding_01State();
}

class _OnBoarding_01State extends State<OnBoarding_01> {
  @override
  final PageController controller = PageController();
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Container(
            padding: const EdgeInsets.all(0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(24, 20, 0, 0),
                      width: 347.55,
                      height: 466.16,
                      child: Image.asset('assets/images/Vector 7.png'),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(45, 65, 0, 0),
                      width: 91.26,
                      height: 39.57,
                      child: Image.asset('assets/images/Vector 5 (1).png'),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(65, 169, 0, 0),
                            width: 125.16,
                            height: 278.02,
                            child: Image.asset('assets/images/Group 108.png'),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 149, 0, 0),
                            width: 154.16,
                            height: 282.3,
                            child: Image.asset('assets/images/Group 107.png'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Find a local guide easily ',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 252,
                      height: 73,
                      child: Center(
                        child: Text(
                          'With Fellow4U, you can find a local guide for you trip easily and explore as the way you want.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
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
                                  builder: (context) => OnBoarding_02()))
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
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.zero,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      width: double.infinity,
                      height: 466.16,
                      child: Image.asset('assets/images/Vector 8.png'),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(222, 0, 0, 0),
                      width: 91.26,
                      height: 39.57,
                      child: Image.asset('assets/images/Vector 5 (1).png'),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(45, 33, 0, 0),
                      width: 152.18,
                      height: 128.8,
                      child: Image.asset('assets/images/Group 98.png'),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(168, 26, 0, 0),
                      width: 153.61,
                      height: 136.68,
                      child: Image.asset('assets/images/Group 99.png'),
                    ),
                    Container(
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(35, 131, 0, 0),
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
                  height: 10,
                ),
                Container(
                  child: Image.asset('assets/images/Group 2.png'),
                ),
                SizedBox(
                  height: 10,
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
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 30, 0),
                  width: double.infinity,
                  height: 423.73,
                  child: Image.asset('assets/images/Group 177.png'),
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
                // SizedBox(
                //   height: 20,
                // ),
                // Container(
                //   child: Image.asset('assets/images/Group 2.png'),
                // ),
                SizedBox(
                  height: 50,
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
