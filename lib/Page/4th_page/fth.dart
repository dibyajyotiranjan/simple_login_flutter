
import 'package:flutter/material.dart';

import '../custom_widget/2nd_page/digitl-payment_card.dart';
import '../custom_widget/2nd_page/icon_butn.dart';
import '../custom_widget/2nd_page/user_board.dart';

class fourth extends StatelessWidget {
  const fourth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      textDirection: TextDirection.ltr,

      children: [
        User_l(),
        Align(
          alignment: Alignment.bottomLeft,
          child: RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                  text: "Balance",
    style: Theme.of(context).textTheme.bodySmall,
                  children: [
                    TextSpan(
                        text: " \$567,57",
                      style: Theme.of(context).textTheme.bodyLarge,)
                  ]
              )),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon_tap(Icons.add),
            icon_tap(Icons.search),
            icon_tap(Icons.grain_sharp),
          ],
        ),

        Payment_card(),
       ListView.builder(
         shrinkWrap: true,
         itemCount: 3,
           itemBuilder: (BuildContext context, int index){
         return ListTile(
           title: Text("Transation"),
           trailing: Icon(Icons.arrow_forward_ios_rounded),
         );
       })
      ],
    );
  }
}
