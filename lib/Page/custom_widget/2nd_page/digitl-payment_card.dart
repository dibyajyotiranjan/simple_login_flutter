import 'package:flutter/material.dart';
import 'package:nauggets_proget/static_col.dart';

import 'card_dls.dart';

class Payment_card extends StatefulWidget {
  const Payment_card({Key? key}) : super(key: key);

  @override
  State<Payment_card> createState() => _Payment_cardState();
}

class _Payment_cardState extends State<Payment_card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,

      decoration: BoxDecoration(
          color: Colors.green,
        borderRadius: BorderRadius.circular(20)
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(30),
      child: Column(
        textDirection: TextDirection.ltr,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Text("CARD",style: TextStyle(color: Staticcolor.white,height: 1.5, fontWeight: FontWeight.bold,fontSize: 20,backgroundColor: Colors.black38),),
            
          ),
          card_datls("9745 5797 4587 9947","Card Hunter"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              card_datls("Turnish Bunar","Card Hunter"),
              card_datls("18/23","valid"),
            ],
          )
        ],
      ),

    );
  }
}
