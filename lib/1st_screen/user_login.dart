
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nauggets_proget/2nd_screen/Home.dart';
import 'package:http/http.dart';

import '../Page/custom_widget/Auth/login.dart';
import '../Page/custom_widget/Auth/signup.dart';

class user extends StatefulWidget {
  const user({Key? key}) : super(key: key);

  @override
  State<user> createState() => _userState();
}

class _userState extends State<user> {
bool user= true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.only(left: 20,right: 20,top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RichText(text: TextSpan(
              text: "WellCOme",
                style: Theme.of(context).textTheme.headlineLarge,
              children: [
                TextSpan(
                    text: ", to sing in continue",style: Theme.of(context).textTheme.headlineSmall)
                ]
            )),
            SizedBox(height: 30,),
            Container(
              height: 60,
              width: 270,
              color: Colors.white10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                height: 60,
                width: 250/2,
              child: TextButton(
                onPressed: (){
                  user = true;
                  setState(() {

                  });
                },
                child: Text("Login",style: Theme.of(context).textTheme.headlineSmall,),
                style: user? ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white30)
                  ):null,),),
                  SizedBox(
                    height: 60,
                    width: 250/2,
                    child: TextButton(
                      onPressed: (){
                        user = false;
                        setState(() {

                        });
                      },
                      child: Text("Sing up",style: Theme.of(context).textTheme.headlineSmall,),
                      style: user?null: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white30)
                    ),),
                  )
                ],
              ),
            ),
            Expanded(child: user ? userSign() : signup())

          ],
        ),
      );
  }
}

