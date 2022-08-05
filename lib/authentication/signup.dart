//import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:rova_pay/authentication/pincode.dart';
import 'package:rova_pay/utils/app_things.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return const Color(0xFF034e97);
    }
    return const Color(0xFF034e97);
  }

  final List<String> items = [
    'World Bank',
    'Swiss Bank',
    'Country Bank',
    'Local Bank',
    'City Bank',
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          shadowColor: Colors.transparent,
          title: const Text("History Details",style: const TextStyle(fontWeight: FontWeight.bold),),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Create your account",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Enter the mentioned details to create your account",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: const Text(
                      "First Name",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: App_Things.getInputTextField(
                          const Icon(Icons.perm_identity, color: const Color(0xFF034e97)),
                          'Enter your first name')),
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      "Last Name",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: App_Things.getInputTextField(const Icon(Icons.perm_identity, color: const Color(0xFF034e97)), 'Enter your first name')

                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: const Text(
                      "Phone Number",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: SizedBox(
                          width: 100,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: '+123',
                                fillColor: const Color(0xFFf8f8f8),
                                filled: true),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                          child: SizedBox(
                            width: 300,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: '03899992999',
                                  fillColor: const Color(0xFFf8f8f8),
                                  filled: true),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      "Email ( Optional )",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: App_Things.getInputTextField(
                          const Icon(Icons.mail_outline_outlined),
                          'Enter your email address')),
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: const Text(
                      "Select Bank",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     DropdownButtonHideUnderline(
                  //       child: Padding(
                  //         padding: const EdgeInsets.only(top: 10.0),
                  //         child: Flexible(
                  //           child: DropdownButton2(
                  //             isExpanded: true,
                  //             hint: Row(
                  //               children: const [
                  //                 Icon(
                  //                   Icons.account_balance_outlined,
                  //                   size: 16,
                  //                 ),
                  //                 SizedBox(
                  //                   width: 4,
                  //                 ),
                  //                 Expanded(
                  //                   child: Text(
                  //                     'Select Bank',
                  //                     style: TextStyle(
                  //                       fontSize: 14,
                  //                       fontWeight: FontWeight.bold,
                  //                     ),
                  //                     overflow: TextOverflow.ellipsis,
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //             items: items
                  //                 .map((item) => DropdownMenuItem<String>(
                  //                       value: item,
                  //                       child: Text(
                  //                         item,
                  //                         style: const TextStyle(
                  //                           fontSize: 14,
                  //                           fontWeight: FontWeight.bold,
                  //                           color: Colors.black,
                  //                         ),
                  //                         overflow: TextOverflow.ellipsis,
                  //                       ),
                  //                     ))
                  //                 .toList(),
                  //             value: selectedValue,
                  //             onChanged: (value) {
                  //               setState(() {
                  //                 selectedValue = value as String;
                  //               });
                  //             },
                  //             icon: const Icon(
                  //               Icons.arrow_drop_down,
                  //             ),
                  //             iconSize: 14,
                  //             iconEnabledColor: Colors.black,
                  //             iconDisabledColor: Colors.grey,
                  //             buttonHeight: 50,
                  //             buttonWidth: 380,
                  //             buttonPadding:
                  //                 const EdgeInsets.only(left: 14, right: 14),
                  //             buttonDecoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(14),
                  //               color: const Color(0xFFf8f8f8),
                  //             ),
                  //             buttonElevation: 2,
                  //             itemHeight: 40,
                  //             itemPadding:
                  //                 const EdgeInsets.only(left: 14, right: 14),
                  //             dropdownMaxHeight: 200,
                  //             dropdownWidth: 300,
                  //             dropdownPadding: null,
                  //             dropdownDecoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(14),
                  //               color: const Color(0xFFf8f8f8),
                  //             ),
                  //             dropdownElevation: 8,
                  //             scrollbarRadius: const Radius.circular(40),
                  //             scrollbarThickness: 6,
                  //             scrollbarAlwaysShow: true,
                  //             offset: const Offset(-20, 0),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          fillColor:
                              MaterialStateProperty.resolveWith(getColor),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        const Text(
                          "I agree to the terms of use & Privacy Policy",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
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
                                    Icons.notifications_active,color: Colors.blue,
                                    size: 100,
                                  ),
                                ),
                                // ignore: prefer_const_constructors
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: const Text(
                                  'to Enable your accounts, allow Rova to access your Phone & SMSs',
                                     textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                const Padding(padding: EdgeInsets.only(top: 10.0)),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          new MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  new PinCodeScreen()));
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
                      child: App_Things.getButton(context,"Get Started")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
