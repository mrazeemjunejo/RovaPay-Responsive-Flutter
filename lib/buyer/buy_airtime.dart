import 'package:flutter/material.dart';
import 'package:rova_pay/buyer/self_buyer_airtime.dart';
import 'others_buyer_Airtime.dart';

class Buy_AirTime extends StatefulWidget {
  const Buy_AirTime({Key? key}) : super(key: key);

  @override
  State<Buy_AirTime> createState() => _Buy_AirTimeState();
}

class _Buy_AirTimeState extends State<Buy_AirTime> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "History",
              style: TextStyle(color: Colors.black),
            ),
          ),
          bottom: TabBar(
            unselectedLabelColor: Colors.black,
          //  splashBorderRadius: BorderRadius.circular(20),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF034e97),
            ),
            tabs: <Widget>[
              Tab(
                text: 'Self'.toString(),
              ),
              Tab(
                text: 'Others'.toString(),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[Self_Buyer_Airtime(), Others_Buyer_Airtime()],
        ),
      )),
    );
  }
}
