
import 'package:flutter/material.dart';

import '../2nd_screen/Home.dart';

class BotmNavigation extends StatefulWidget {
  int curIndex;
  BotmNavigation(this.curIndex,{Key? key}) : super(key: key);

  @override
  State<BotmNavigation> createState() => _BotmNavigationState();
}

class _BotmNavigationState extends State<BotmNavigation> {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.monitor_heart_rounded),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.monetization_on_outlined),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.lock_clock_outlined),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: ""),
      ],
      currentIndex: widget.curIndex,

      onTap: (int index){
        setState((){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home(selectedIndex: index)));

        });
      },
      iconSize: 30,
      selectedFontSize: 30,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.black,
      showSelectedLabels: false,
    );
  }
}
