import 'package:flutter/material.dart';
class MainBTN extends StatelessWidget {
  final String btnName;
  final Function onClick;
  MainBTN({this.btnName, this.onClick});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Container(
        child: Text(btnName,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32.0,
          ),
        ),padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(8.0), color: Colors.blue),
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
            color: Colors.blue),
      ),
      onPressed: onClick,
    );
  }
}