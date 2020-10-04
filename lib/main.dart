import 'package:flutter/material.dart';
import 'components/costum_btn.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sales',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('وليد صبيع'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MainBTN(btnName: 'انشاء فاتوره مبيعات',),
              SizedBox(height: 12.0,),
              MainBTN(btnName: 'عرض فواتير المبيعات',),
              SizedBox(height: 12.0,),
              MainBTN(btnName: 'تقارير المخزن والدرج',),
            ],
          ),
        ),
      ),
    );
  }
}