import 'package:flutter/material.dart';
import 'package:nauggets_proget/static_col.dart';

class User_l extends StatelessWidget {
  const User_l({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        alignment: Alignment.topLeft,
        height: 50,
        width: 50,
        child: CircleAvatar(
          radius: 47,
          //backgroundImage: ExactAssetImage('assets/images/restaurant.jpg'),
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Staticcolor.green,
            width: 4.0,
          ),
        ),
      ),
      minLeadingWidth: 4,
      minVerticalPadding: 5,
      title: Text("Tommy Berns"),
      subtitle: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Text("Loss Angel"),Icon(Icons.location_on,color: Staticcolor.green,)],),
    );
  }
}
