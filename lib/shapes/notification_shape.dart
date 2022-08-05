import 'package:flutter/material.dart';

class Notification_Shape extends StatefulWidget {
  const Notification_Shape({Key? key}) : super(key: key);

  @override
  State<Notification_Shape> createState() => _Notification_ShapeState();
}

class _Notification_ShapeState extends State<Notification_Shape> {
  @override
  Widget build(BuildContext context) {
    var screenHeight= MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    child: SizedBox(
                        child: Icon(
                  Icons.notifications_active_outlined,
                  color: Colors.blueAccent,
                  size: screenHeight.height/15,
                ))),
                Container(
                  //width: screenHeight.width/1-120,
                    child: Text(
                  "The Latest news From Rova Pay\nis our blog . Check it out",
                  textScaleFactor: 1.0,
                )),
                Container(
                    child: Text(
                  "jan12,2022",
                  style: TextStyle(color: Colors.blueAccent),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
