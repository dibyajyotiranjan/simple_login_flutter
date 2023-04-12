
import 'package:flutter/material.dart';
import 'package:nauggets_proget/Page/custom_widget/3rd_page/container.dart';
import 'package:nauggets_proget/static_col.dart';

import '../../../3rd_screen/datails.dart';

class icon_tap extends StatefulWidget {
  IconData icon;
  icon_tap(this.icon,{Key? key}) : super(key: key);

  @override
  State<icon_tap> createState() => _icon_tapState();
}

class _icon_tapState extends State<icon_tap> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Details())),
      child: Container(
        width: 45,
        height: 45,
        margin: EdgeInsets.only(left: 10,right: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200,width: 5,
          ),
          shape: BoxShape.circle
        ),
        child: Icon(widget.icon,color: Staticcolor.blue,size: 32,weight: 16,)
      ),
    );
  }
}
