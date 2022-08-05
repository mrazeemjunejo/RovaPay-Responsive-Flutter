import 'package:flutter/material.dart';
import 'package:rova_pay/utils/app_things.dart';

class Self_Buyer_Airtime extends StatefulWidget {
  const Self_Buyer_Airtime({Key? key}) : super(key: key);

  @override
  State<Self_Buyer_Airtime> createState() => _Self_Buyer_AirtimeState();
}

class _Self_Buyer_AirtimeState extends State<Self_Buyer_Airtime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: App_Things.getInputTextField(Icon(null), "081212121231212"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "Enter Amount",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: App_Things.getInputTextField(Icon(null), "\$0.00"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                App_Things.getButton(context,"Buy Airtime"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
