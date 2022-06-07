import 'package:flutter/material.dart';
import 'package:task_1/Pages/HomeScreen.dart';
import 'package:task_1/Pages/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(primarySwatch: Colors.green),
      /*home: const HomeScreen(title: 'Home Screen'),*/
      routes: {
        "/": (context) => LoginPage(title: "Login Page"),
        "/home": (context) => HomeScreen(title: "Home Screen"),
        "/login": (context) => LoginPage(title: "Login Page"),
      },
    );
  }
}
