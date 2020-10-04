import 'package:flutter/material.dart';
class SalesPreviewScreen extends StatefulWidget {
  static const String id = 'salesPreviewScreen';

  @override
  _SalesPreviewScreenState createState() => _SalesPreviewScreenState();
}

class _SalesPreviewScreenState extends State<SalesPreviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('وليد صبيع'),
      ),
      body: Center(child: Text('SalesPreviewScreen'),),
    );
  }
}
