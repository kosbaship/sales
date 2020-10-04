import 'package:flutter/material.dart';
class StorageMoneyScreen extends StatefulWidget {
  static const String id = 'storageMoneyScreen';

  @override
  _StorageMoneyScreenState createState() => _StorageMoneyScreenState();
}

class _StorageMoneyScreenState extends State<StorageMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('وليد صبيع'),
      ),
      body: Center(child: Text('StorageMoneyScreen'),),
    );
  }
}
