import 'package:flutter/material.dart';
class SalesCreationScreen extends StatefulWidget {
  static const String id = 'salesCreationScreen';

  @override
  _SalesCreationScreenState createState() => _SalesCreationScreenState();
}

class _SalesCreationScreenState extends State<SalesCreationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('وليد صبيع'),
      ),
      body: Center(child: Text('SalesCreationScreen'),),

    );
  }
}
