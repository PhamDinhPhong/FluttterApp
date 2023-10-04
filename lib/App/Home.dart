import 'package:figma_app/App/LoginSignUp.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome User"),
              SizedBox(
                height: 50,
              ),
              OutlinedButton.icon(onPressed: (){
                logout();
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>LoginSignUp()));

              }, icon: Icon(Icons.exit_to_app, size: 18,), label: Text('Logout'),)
            ],


          ),
        ),
      ),

    );
  }
  Future<void> logout() async{
    try{
      Response response = await get(
        // Uri.parse('https://dummyjson.com/auth/login'),
          Uri.parse('http://192.168.1.18:5000/api/user/logout'),
      );
      Data data = Data.fromJson(jsonDecode(response.body.toString()));
      ScaffoldMessenger.of(context)
          .showSnackBar(
          SnackBar(content: Text(data.mess,), backgroundColor: Colors.red,));
      print(data.mess);
    }catch(e){
      print(e.toString());
    }
  }
}

class Data{
  late String mess;
  Data(this.mess);
  Data.fromJson(Map<String, dynamic>json){
    mess=json["mess"];
  }
}
