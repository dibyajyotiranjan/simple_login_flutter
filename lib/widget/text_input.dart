import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class Textfield extends StatefulWidget {
  var lebel;
  var hint;
  Textfield({this.lebel,this.hint, Key? key}) : super(key: key);

  @override
  State<Textfield> createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      decoration:InputDecoration(
        label: Text(widget.lebel),
        hintText: widget.hint,
        hintStyle: TextStyle(color: Colors.black),
      ),
      validator: (value){
        if(value == null||value.isEmpty){
          return 'This field can\'t be empty';
        }
        return null;
      },
    );
  }
}
