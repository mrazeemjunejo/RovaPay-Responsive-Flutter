import 'package:flutter/material.dart';
import 'package:rova_pay/home.dart';
import 'package:rova_pay/landingscreen.dart';

import '../utils/app_things.dart';

class Make_Payment extends StatefulWidget {
  const Make_Payment({Key? key}) : super(key: key);

  @override
  State<Make_Payment> createState() => _Make_PaymentState();
}

class _Make_PaymentState extends State<Make_Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        title: const Text(
          "Make Payment",
          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Text(
                  "Wait for sales to enter amount",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: App_Things.getInputTextField(const Icon(null), "\$0.00")),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: const Text(
                  "Description",
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: App_Things.getInputTextField(
                      const Icon(null), "What are you Paying For ?")),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: const Text(
                  "Shoprite IKeja Mall",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  "Mall & ART",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Text(
                  "Damilola Raymonds",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  "Sales",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Dialog errorDialog = Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      //this right here
                      child: Container(
                        height: 320.0,
                        width: 320.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Icon(
                                Icons.check_circle_outlined,color: Colors.blue,
                                size: 100,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Payment Successfull',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: const Text(
                                'your payment has been send successfully !',
                                textAlign: TextAlign.center,
                                style: const TextStyle(color: Colors.black),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 10.0)),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                      new MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                          new LandingScreen()));
                                },
                                child: App_Things.getButton(context,"Continue"))
                          ],
                        ),
                      ),
                    );
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => errorDialog);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: App_Things.getButton(context,"Pay \$60 Now"),
                  )),

            ],
          ),
        ),
      ),
    );
  }
}
