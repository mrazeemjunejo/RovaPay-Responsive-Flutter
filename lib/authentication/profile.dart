import 'package:flutter/material.dart';
import 'package:rova_pay/utils/app_things.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: Text(
          "My Account",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              "Alvin Majid",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              "+234 803999031",
              style: TextStyle(color: Colors.blueAccent, fontSize: 25),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/images/walleticon.png"),
              Text(
                "Gauranty Trust Bank",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Change",
                style: TextStyle(color: Colors.blueAccent, fontSize: 20),
              ),
            ],
          ),
          App_Things.getProfileThings("About RovaPay", Icons.error_outline),

          App_Things.getProfileThings("Change PIN", Icons.lock_outline),

          App_Things.getProfileThings("Dark Mode", Icons.dark_mode_outlined),

          App_Things.getProfileThings("Rate App on Store", Icons.thumb_up_outlined),

          App_Things.getProfileThings("Logout", Icons.power_settings_new_outlined),
        ],
      ),
    ));
  }
}
