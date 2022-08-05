 //import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:rova_pay/landingscreen.dart';
import 'package:rova_pay/utils/app_things.dart';

class BecomeVendor extends StatefulWidget {
  const BecomeVendor({Key? key}) : super(key: key);

  @override
  State<BecomeVendor> createState() => _BecomeVendorState();
}


final List<String> items = [
  'Vendor',
  'Owner',
  'Business',
];

String? selectedValue;


class _BecomeVendorState extends State<BecomeVendor> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            shadowColor: Colors.transparent,
            title:
                Image.asset('assets/images/walleticon.png', fit: BoxFit.cover),
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Become a vender for business",
                      style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text("Enter the mentioned details to become a vender",style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Text("Rovapay Busness ID",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: App_Things.getInputTextField(Icon(Icons.cases_outlined,color: Colors.lightBlue,), "212315656442")
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text("Category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
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
                  //                   Icons.category_outlined,
                  //                   color: Colors.blue,
                  //                   size: 25,
                  //                 ),
                  //                 SizedBox(
                  //                   width: 4,
                  //                 ),
                  //                 Expanded(
                  //                   child: Text(
                  //                     'Select Category',
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
                  //               value: item,
                  //               child: Text(
                  //                 item,
                  //                 style: const TextStyle(
                  //                   fontSize: 14,
                  //                   fontWeight: FontWeight.bold,
                  //                   color: Colors.black,
                  //                 ),
                  //                 overflow: TextOverflow.ellipsis,
                  //               ),
                  //             ))
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
                  //             const EdgeInsets.only(left: 14, right: 14),
                  //             buttonDecoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(14),
                  //               color: Color(0xFFf8f8f8),
                  //             ),
                  //             buttonElevation: 2,
                  //             itemHeight: 40,
                  //             itemPadding:
                  //             const EdgeInsets.only(left: 14, right: 14),
                  //             dropdownMaxHeight: 200,
                  //             dropdownWidth: 100,
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
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Text("Busniness name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: App_Things.getInputTextField(Icon(Icons.cases_outlined,color: Colors.lightBlue,), "Busniness name")
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text("Category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
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
                  //                   Icons.perm_identity,
                  //                   color: Colors.blue,
                  //                   size: 25,
                  //                 ),
                  //                 SizedBox(
                  //                   width: 4,
                  //                 ),
                  //                 Expanded(
                  //                   child: Text(
                  //                     'Choose Role',
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
                  //               value: item,
                  //               child: Text(
                  //                 item,
                  //                 style: const TextStyle(
                  //                   fontSize: 14,
                  //                   fontWeight: FontWeight.bold,
                  //                   color: Colors.black,
                  //                 ),
                  //                 overflow: TextOverflow.ellipsis,
                  //               ),
                  //             ))
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
                  //             const EdgeInsets.only(left: 14, right: 14),
                  //             buttonDecoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(14),
                  //               color: Color(0xFFf8f8f8),
                  //             ),
                  //             buttonElevation: 2,
                  //             itemHeight: 40,
                  //             itemPadding:
                  //             const EdgeInsets.only(left: 14, right: 14),
                  //             dropdownMaxHeight: 200,
                  //             dropdownWidth: 100,
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
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new LandingScreen())),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: App_Things.getButton(context,"Become a Vender"),
                    )
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
