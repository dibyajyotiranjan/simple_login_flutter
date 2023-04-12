
import 'package:flutter/material.dart';

class card_datls extends StatelessWidget {
  String text1;
  String text2;
  card_datls(this.text1,this.text2,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(text1,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white70),),
        Text(text2,style: TextStyle(fontSize: 20,color: Colors.white54),)
      ],
    );
  }
}
