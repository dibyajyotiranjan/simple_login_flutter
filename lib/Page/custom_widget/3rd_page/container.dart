
import 'package:flutter/material.dart';
import 'package:nauggets_proget/static_col.dart';

class cont extends StatelessWidget {
  const cont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 45,
        height: 45,
        margin: EdgeInsets.only(left: 10,right: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade200,width: 5,
            ),
            shape: BoxShape.circle
        ),
        child: Container(
            width: 25,
            height: 25,
            margin: EdgeInsets.only(left: 10,right: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(left: BorderSide(color: Colors.red,width: 5),top: BorderSide(color: Staticcolor.blue,width: 6)),
                // border: Border.all(color: Colors.grey.shade200,width: 5,
                // ),
                shape: BoxShape.circle
            ),),
    );
  }
}
