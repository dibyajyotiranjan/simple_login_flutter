
import 'package:flutter/material.dart';
import 'package:nauggets_proget/widget/Bottom_navigtion.dart';

import '../Page/1st_page/fst.dart';
import '../Page/2nd_page/snd.dart';
import '../Page/3rd_page/trd.dart';
import '../Page/4th_page/fth.dart';
import '../Page/5th_page/fth.dart';

class Home extends StatefulWidget {
  int selectedIndex;
  Home({required this.selectedIndex,Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List bottonitem=[Fstpage(),snd(),Trdpage(),fourth(),fth()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: Drawer(
        width: 100,
      ),
      bottomNavigationBar: BotmNavigation(widget.selectedIndex),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: Icon(Icons.arrow_back_ios_new,size: 20,),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: bottonitem[widget.selectedIndex],
      )
    );
  }
}
