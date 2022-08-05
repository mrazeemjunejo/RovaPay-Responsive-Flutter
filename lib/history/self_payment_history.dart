import 'package:flutter/material.dart';
import 'package:rova_pay/history/history_details.dart';
import 'package:rova_pay/shapes/history_shape.dart';

class Self_Payment_History extends StatefulWidget {
  const Self_Payment_History({Key? key}) : super(key: key);

  @override
  State<Self_Payment_History> createState() => _Self_Payment_HistoryState();
}

class _Self_Payment_HistoryState extends State<Self_Payment_History> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(child: Payment_History_Shape(),
          onTap: () =>  Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => new History_Details())),);
        },
      ),
    );
  }
}
