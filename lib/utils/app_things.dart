import 'package:flutter/material.dart';

abstract class App_Things extends StatelessWidget {
  static TextField getInputTextField(
    Icon icon,
    String txt,
  ) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFf8f8f8),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: txt,
        prefixIcon: icon,
      ),
    );
  }

  static Text getTxt(
      String txt, double font_size
      ){
    return Text(
      txt,
      style:
      TextStyle(fontSize: font_size),
    );
  }

  static Padding getProfileThings(
      String txt, IconData icon
      ){
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.blueAccent,
            size: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              txt,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }

  static Card getButton(BuildContext context, String txt_in_btn) {
    return Card(
      color: Color(0xFF034e97),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width/1-20,
        height: 60,
        child: Center(
            child: Text(
          txt_in_btn,
          style: TextStyle(fontSize: 20, color: Colors.white),
        )),
      ),
    );
  }
}
