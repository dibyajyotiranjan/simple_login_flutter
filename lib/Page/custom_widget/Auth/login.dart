
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nauggets_proget/2nd_screen/Home.dart';
import 'package:http/http.dart';

class userSign extends StatefulWidget {
  const userSign({Key? key}) : super(key: key);

  @override
  State<userSign> createState() => _userStateSign();
}

class _userStateSign extends State<userSign> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();

  void login(String email , password) async {
    try {
      Response response = await post(
          Uri.parse('https://reqres.in/api/login'),
          body: {
            'email': email,
            'password': password
          }
      );

      if (response.statusCode == 200) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home(selectedIndex: 3,)));

        var data = jsonDecode(response.body.toString());
        print(data['token']);
        print('Login successfully');
      } else {
        print('Please enter Valid Email and Password');
      }
    } catch (e) {
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return   Form(
      key: _formkey,

      child: Padding(
        padding: EdgeInsets.only(left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              controller: emailInput,
              validator: (value){
                if(value == null|| value.isEmpty){
                  return 'This field can\'t be empty';
                }
                return null;
              },
              cursorColor: Colors.white,
              cursorWidth: 5,
              autofocus: true,
              style: Theme.of(context).textTheme.headlineSmall,
              decoration:InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  label: Text("Email ID"),
                  hintText: "eve.holt@reqres.in",
                  hintStyle: Theme.of(context).textTheme.headlineSmall,
                  labelStyle: Theme.of(context).textTheme.headlineSmall,
                  floatingLabelBehavior: FloatingLabelBehavior.always
              ),
            ),
            TextFormField(
              controller: passwordInput,
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'This FIeld can\'t be empty';
                }
                return null;
              },
              cursorColor: Colors.white,
              cursorWidth: 5,
              autofocus: true,
              obscureText: true,
              style: Theme.of(context).textTheme.headlineSmall,
              decoration:InputDecoration(

                  contentPadding: EdgeInsets.only(left: 10),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  label: Text("Password"),
                  hintText: ". . . . . . .",
                  hintStyle: Theme.of(context).textTheme.headlineLarge,
                  labelStyle: Theme.of(context).textTheme.headlineSmall,
                  floatingLabelBehavior: FloatingLabelBehavior.always
              ),
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: TextButton(

                onPressed: () async{
                  if(_formkey.currentState!.validate()){login(emailInput.text.toString(), passwordInput.text.toString());}

                },
                child: Text("SingUP",style: Theme.of(context).textTheme.bodyLarge),style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white,),

              ),),
            ),
            TextButton(onPressed: (){},
              child: Text("Forget your Password?",
                  style: Theme.of(context).textTheme.bodySmall),)
          ],
        ),
      ),
    );
  }
}

