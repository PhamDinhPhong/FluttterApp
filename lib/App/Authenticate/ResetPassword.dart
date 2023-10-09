import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Reset your password',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 60,
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Enter your new password',
                      suffixIcon: Icon(Icons.password),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        resetpassword(passwordController.text.toString());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 60,
                        child: Text(
                          'Submit',
                          style: TextStyle(fontSize: 18),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.greenAccent),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> resetpassword(String password) async {
    try {
      Response response = await put(
          Uri.parse(
              'https://e-commerce-backend-flutter.onrender.com/api/user/resetpassword/'),
          body: {
            'password': password,
          });

      print(response.body);
    } catch (e) {
      print(e.toString());
    }
  }
}
