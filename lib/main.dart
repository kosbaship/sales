import 'package:flutter/material.dart';
import 'package:sales/screens/sales_creation_screen.dart';
import 'package:sales/screens/sales_preview_screen.dart';
import 'package:sales/screens/storage_money_screen.dart';
import 'package:sales/screens/welcom_screen.dart';
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
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        SalesCreationScreen.id: (context) => SalesCreationScreen(),
        SalesPreviewScreen.id: (context) => SalesPreviewScreen(),
        StorageMoneyScreen.id: (context) => StorageMoneyScreen(),
      },
    );
  }
}