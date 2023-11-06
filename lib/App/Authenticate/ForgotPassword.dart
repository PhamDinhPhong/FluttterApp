import 'dart:convert';
import 'package:figma_app/App/Authenticate/CheckMail.dart';
import 'package:figma_app/App/Authenticate/Login.dart';


import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ForgorPassword extends StatefulWidget {
  const ForgorPassword({super.key});

  @override
  State<ForgorPassword> createState() => _ForgorPasswordState();
}

TextEditingController emailController = TextEditingController();

class _ForgorPasswordState extends State<ForgorPassword> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: screenWidth,
                    height: 120,
                    color: Colors.greenAccent,
                    child: Row(
                      children: [
                        Container(
                          child: Image.asset('assets/images/Group 3.png'),
                          padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                        ),
                        Container(
                          child: Image.asset('assets/images/Vector 6.png'),
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.fromLTRB(130, 0, 20, 20),
                        ),
                        Container(
                          child: Image.asset('assets/images/Vector.png'),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                            fontSize: 34, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        'Input your email, we will send you an instruction to reset your password.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Email',
                          suffixIcon: Icon(Icons.email),
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        sendMail(emailController.text.toString());
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
                            "Send",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'Back to',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()))
                            },
                            child: Container(
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                    color: Colors.greenAccent, fontSize: 14),
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
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> sendMail(String email) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CheckMail()));
    // try {
    //   Response response = await post(
    //
    //       // Uri.parse('https://dummyjson.com/auth/login/api/user/forgotpassword/'),
    //       Uri.parse('https://192.168.1.21:5555/api/user/forgotpassword/'),
    //       body: {
    //         'email': email,
    //       });
    //   print(response.body);
    //
    //   Data data = Data.fromJson(jsonDecode(response.body.toString()));
    //   if (response.statusCode == 200) {
    //     print('Response body: ${response.body}');
    //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //       content: Text(data.success ? data.mess : 'Have an error'),
    //       backgroundColor: data.success ? Colors.greenAccent : Colors.red,
    //     ));
    //     Navigator.push(
    //         context, MaterialPageRoute(builder: (context) => CheckMail()));
    //   } else {
    //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //       content: Text(data.mess),
    //       backgroundColor: data.success ? Colors.greenAccent : Colors.red,
    //     ));
    //   }
    // } catch (e) {
    //   print(e.toString());
    // }
  }
}

class Data {
  late String mess;
  late bool success;
  Data(this.mess, this.success);
  Data.fromJson(Map<String, dynamic> json) {
    mess = json["mess"];
    success = json["success"];
  }
}
