import 'package:flutter/material.dart';
import 'package:rova_pay/buyer/buy_airtime.dart';
import 'package:rova_pay/notification.dart';
import 'package:rova_pay/payments/accepting_payment.dart';
import 'package:rova_pay/payments/make_payment.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenHeight= MediaQuery.of(context).size;
    var myPad = screenHeight.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: const Color(0xFF034e97),
                shape: const RoundedRectangleBorder(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: screenHeight.height/4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: const Text(
                              'Helo, Alvin',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: GestureDetector(
                                onTap: () => Navigator.of(context).push(
                                    new MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            new NotificationScreen())),
                                child: const Icon(
                                  Icons.notifications_active_outlined,
                                  color: Colors.white,
                                  size: 30,
                                )),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Welcome back to your account',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.poll_sharp,
                              color: Colors.white,
                              size: 30,
                            ),
                            const Text(
                              "Gauranty Trust Bank",
                              style: TextStyle(color: Colors.white),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: const Text(
                                  "Balance",
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: const Text(
                  "Quick Services",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new Make_Payment())),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 30.0, right: 30.0, left: 30.0, bottom: 30.0),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.shuffle,
                              color: Colors.blueAccent,
                              size: 30,
                            ),
                            const Text(
                              "Transfer Funds",
                              textScaleFactor: 1.0,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new Buy_AirTime())),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 30.0, right: 30.0, left: 30.0, bottom: 30.0),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.airplane_ticket_outlined,
                              color: Colors.blueAccent,
                              size: 30,
                            ),
                            const Text(
                              "Buy Airtime",
                              textScaleFactor: 1.0,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Instant Payment",
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Make_Payment())),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: const Text(
                                    "Shoprite IKeja Mall",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 25),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: const Text(
                                    "Mall & ART",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: const Text(
                                    "Damilola Raymond",
                                    style: const TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Card(
                                color: Colors.blueAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                child: const Icon(
                                  Icons.chevron_right_outlined,
                                  size: 70,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Make_Payment())),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10,top: 10,bottom: 10),
                        child: Card(
                            color: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)),
                            child: const Icon(
                              Icons.monetization_on_outlined,
                              size: 70,
                              color: Colors.white,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 10,top: 10,bottom: 10),
                              child: const Text(
                                "Accepting Payment...",
                                textScaleFactor: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Accepting Payment",
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Make_Payment())),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10,top: 10,bottom: 10),
                        child: Card(
                            color: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)),
                            child: const Icon(
                              Icons.monetization_on_outlined,
                              size: 70,
                              color: Colors.white,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 10,top: 10,bottom: 10),
                              child: const Text(
                                "Tap to Start\nAccepting Payment...",
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  void onPressed() {}
}
