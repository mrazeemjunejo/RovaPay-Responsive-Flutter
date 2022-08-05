import 'package:flutter/material.dart';

class Payment_List_Shape extends StatefulWidget {
  const Payment_List_Shape({Key? key}) : super(key: key);

  @override
  State<Payment_List_Shape> createState() => _Payment_List_ShapeState();
}

class _Payment_List_ShapeState extends State<Payment_List_Shape> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("William Smith"),
              Text("\$600"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("09 : 00 am ( 02 july "),
              Text("Processing"),
            ],
          )
        ],
      ),
    );
  }
}
