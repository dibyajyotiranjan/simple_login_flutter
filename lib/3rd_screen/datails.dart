
import 'package:flutter/material.dart';
import 'package:nauggets_proget/widget/Bottom_navigtion.dart';

import '../Page/custom_widget/2nd_page/user_board.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BotmNavigation(3),
      endDrawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: InkWell(
          onTap: ()=>Navigator.pop(context),
            child: Icon(Icons.arrow_back_ios_new)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          User_l(),
          Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(left: 10,right: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200,width: 5,
                  ),
                  shape: BoxShape.circle
              ),
              child: Container(
                  width: 189,
                  height: 189,
                  margin: EdgeInsets.only(left: 10,right: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade200,width: 5,
                      ),
                      shape: BoxShape.circle
                  ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: ListTile(
                    title: Text("Balace",style: TextStyle(fontSize: 23),),
                    subtitle: Text("\$555,879",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 100,
                width: 150,
                child: ListTile(

                  leading: Icon(Icons.do_not_disturb_on_total_silence,color: Colors.green,),
                  title: Text("Income",style: TextStyle(fontSize: 16),),
                  subtitle: Text("300",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  minLeadingWidth: 10,

                ),
              ),
              SizedBox(
                height: 100,
                width: 150,
                child: ListTile(

                  leading: Icon(Icons.do_not_disturb_on_total_silence,color: Colors.green,),
                  title: Text("Expense"),
                  subtitle: Text("297"),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
