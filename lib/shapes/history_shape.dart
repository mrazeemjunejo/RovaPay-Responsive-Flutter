import 'package:flutter/material.dart';

class Payment_History_Shape extends StatefulWidget {
  const Payment_History_Shape({Key? key}) : super(key: key);

  @override
  State<Payment_History_Shape> createState() => _Payment_History_ShapeState();
}

class _Payment_History_ShapeState extends State<Payment_History_Shape> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "William Smith",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                  ),
                  Text(
                    "\$600",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("09 : 00 am ( 02 july )"),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      "Successfull",
                      style: TextStyle(color: Colors.green),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
