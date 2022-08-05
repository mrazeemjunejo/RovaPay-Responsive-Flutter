import 'package:flutter/material.dart';
import 'package:rova_pay/authentication/signup.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size;
    var screenWidth = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF034e97),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 250, top: 150),
                  child: Image.asset("assets/images/iconname.png"),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new SignUpScreen())),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: SizedBox(
                      width: screenWidth.width/1-30,
                      height: screenHeight.height/10,
                      child: Center(
                          child: Text(
                        'Get Started',
                        style: TextStyle(fontSize: 20),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
