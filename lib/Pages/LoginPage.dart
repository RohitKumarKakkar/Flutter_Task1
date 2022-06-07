import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_1/Pages/HomeScreen.dart';

import 'DetailsScreen.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, required this.title}) : super(key: key);
  String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "assets/images/login.png",
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 32.0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Enter Email', labelText: 'Email'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: 'Enter Password',
                                labelText: 'Password'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.bold),
                        ),
                        style: TextButton.styleFrom(),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return HomeScreen(title: 'Home Screen');
                              },
                            ),
                          );
                        })
                  ])),
        ));
  }
}
