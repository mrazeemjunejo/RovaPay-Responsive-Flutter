import 'package:flutter/material.dart';
import 'package:rova_pay/shapes/payment_list_shape.dart';

class Accepting_Payment extends StatefulWidget {
  const Accepting_Payment({Key? key}) : super(key: key);

  @override
  State<Accepting_Payment> createState() => _Accepting_PaymentState();
}

class _Accepting_PaymentState extends State<Accepting_Payment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text("Accepting Payment")),
      body: Column(
        children: [
          Text(
            "Enter Amount for john Dee",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: '\$0.00',
            ),
          ),
          Text(
            "Payment List",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Payment_List_Shape();
            },
          ),
        ],
      ),
    ));
  }
}
