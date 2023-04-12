import 'package:flutter/material.dart';
import 'package:nauggets_proget/1st_screen/user_login.dart';
import 'package:nauggets_proget/2nd_screen/Home.dart';

import 'Page/custom_widget/3rd_page/container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primaryColor: Colors.white,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            color: Colors.white,
            fontSize: 31,
            fontWeight: FontWeight.bold
          ),
          headlineSmall: TextStyle(
              color: Colors.white,
              fontSize: 31,
          ),
          bodyLarge: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black),
          bodySmall: TextStyle(
              fontSize: 20,
              color: Colors.grey),

        ),
          ),
      // home: TextField(),
      home: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Scaffold(

          backgroundColor: Colors.indigo,
          body: SafeArea(child: user()),
        ),
      ),
    );
  }
}
