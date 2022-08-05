//import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:rova_pay/utils/app_things.dart';

class Others_Buyer_Airtime extends StatefulWidget {
  const Others_Buyer_Airtime({Key? key}) : super(key: key);

  @override
  State<Others_Buyer_Airtime> createState() => _Others_Buyer_AirtimeState();
}

final List<String> items = [
  '081212121231212',
  '081212121231212',
  '081212121231212'
];

String? selectedValue;

class _Others_Buyer_AirtimeState extends State<Others_Buyer_Airtime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            //                 SizedBox(
            //                   width: 4,
            //                 ),
            //                 Expanded(
            //                   child: Text(
            //                     '081212121231212',
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
            //             buttonPadding: const EdgeInsets.only(left: 14, right: 14),
            //             buttonDecoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(14),
            //               color: Color(0xFFf8f8f8),
            //             ),
            //             buttonElevation: 2,
            //             itemHeight: 40,
            //             itemPadding: const EdgeInsets.only(left: 14, right: 14),
            //             dropdownMaxHeight: 200,
            //             dropdownWidth: 300,
            //             dropdownPadding: null,
            //             dropdownDecoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(14),
            //               color: Color(0xFFf8f8f8),
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
              padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
              child: Text(
                "Enter Amount",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: App_Things.getInputTextField(Icon(null), "\$0.00"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
              child: Text(
                "Bank USSD PIN",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
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
            Card(
              color: Color(0xFF034e97),
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1-20,
                height: MediaQuery.of(context).size.height/10,
                child: Center(
                    child: Text(
                  'Buy Airtime',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textFieldOTP(BuildContext context,{required bool first, last}) {
    return Container(
      height: MediaQuery.of(context).size.height/10,
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
                borderSide: BorderSide(width: 2, color: Colors.purple),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
