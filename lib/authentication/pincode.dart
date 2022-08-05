import 'package:flutter/material.dart';
import 'package:rova_pay/utils/app_things.dart';
import 'package:rova_pay/vendor.dart';

class PinCodeScreen extends StatefulWidget {
  const PinCodeScreen({Key? key}) : super(key: key);

  @override
  State<PinCodeScreen> createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          shadowColor: Colors.transparent,
          title: Image.asset('assets/images/walleticon.png', fit: BoxFit.cover),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
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
                Text(
                  "Set your Rovapay PIN",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Enter a unique 4 digit PIN to secure your Rovapay Accout",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    "Enter PIN",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _textFieldOTP(context,first: true, last: false),
                      _textFieldOTP(context,first: false, last: false),
                      _textFieldOTP(context,first: false, last: false),
                      _textFieldOTP(context,first: false, last: true),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    "Confirm PIN",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _textFieldOTP(context,first: true, last: false),
                    _textFieldOTP(context,first: false, last: false),
                    _textFieldOTP(context,first: false, last: false),
                    _textFieldOTP(context,first: false, last: true),
                  ],
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new BecomeVendor())),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: App_Things.getButton(context,"Save PIN"),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Use Fingerprint instead",
                        style: TextStyle(fontSize: 20,color: Colors.blueAccent),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _textFieldOTP(BuildContext context,{required bool first, last}) {
    return Container(
      height: MediaQuery.of(context).size.height/9,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: false,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.blue),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
