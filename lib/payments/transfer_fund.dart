import 'package:flutter/material.dart';
import '../authentication/pincode.dart';

class Transfer_Funds extends StatefulWidget {
  const Transfer_Funds({Key? key}) : super(key: key);

  @override
  State<Transfer_Funds> createState() => _Transfer_FundsState();
}

class _Transfer_FundsState extends State<Transfer_Funds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transfer Fund"),
      ),
      body: Column(
        children: [
          Text("Select Reciept from Contact List"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("081212121231212"),
              DropdownButton<String>(
                items: <String>['A', 'B', 'C', 'D'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ],
          ),
          Text("Dragnet Solution LTd"),
          Text("Enter Amount",style: TextStyle(fontWeight: FontWeight.bold),),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: '\$0.00',
            ),
          ),
          Text("Description",style: TextStyle(fontWeight: FontWeight.bold),),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'What are you Paying For ?',
            ),
          ),
          GestureDetector(
            onTap: (){

              Dialog errorDialog = Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                //this right here
                child: Container(
                  height: 300.0,
                  width: 300.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(Icons.check_circle_outlined,size: 100,),
                      ),
                      Text(
                        'your payment has been send successfully !',
                        style: TextStyle(color: Colors.black),
                      ),
                      Padding(padding: EdgeInsets.only(top: 50.0)),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => new PinCodeScreen()));
                        },
                        child: Card(
                          color: Color(0xFF034e97),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: SizedBox(
                            width: 400,
                            height: 60,
                            child: Center(
                                child: Text(
                                  'Get Started',
                                  style: TextStyle(fontSize: 20, color: Colors.white),
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
              showDialog(
                  context: context,
                  builder: (BuildContext context) => errorDialog);
            },
            child: Card(
              color: Color(0xFF034e97),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: SizedBox(
                width: 400,
                height: 60,
                child: Center(
                    child: Text(
                      'Transfer \$60 Now',
                      style: TextStyle(fontSize: 20,color: Colors.white),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
