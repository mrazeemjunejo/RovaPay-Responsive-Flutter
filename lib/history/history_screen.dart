import 'package:flutter/material.dart';
import 'package:rova_pay/history/business_payment_history.dart';
import 'package:rova_pay/history/self_payment_history.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
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
        //    splashBorderRadius: BorderRadius.circular(20),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
                color: Color(0xFF034e97),),
            tabs: <Widget>[
              Tab(
                text: 'Self'.toString(),
              ),
              Tab(
                text: 'Business'.toString(),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Self_Payment_History(),
            Business_Payment_History()
          ],
        ),
      )),
    );
  }
}
