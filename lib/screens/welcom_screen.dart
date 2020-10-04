import 'package:flutter/material.dart';
import 'package:sales/components/costum_btn.dart';
import 'package:sales/screens/sales_creation_screen.dart';
import 'package:sales/screens/sales_preview_screen.dart';
import 'package:sales/screens/storage_money_screen.dart';
class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcomeScreen';


  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('وليد صبيع'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MainBTN(btnName: 'انشاء فاتوره مبيعات',
            onClick: (){
              Navigator.pushNamed(context, SalesCreationScreen.id);
            },),
            SizedBox(height: 12.0,),
            MainBTN(btnName: 'عرض فواتير المبيعات',onClick: (){
              Navigator.pushNamed(context, SalesPreviewScreen.id);
            },),
            SizedBox(height: 12.0,),
            MainBTN(btnName: 'تقارير المخزن والدرج',onClick: (){
              Navigator.pushNamed(context, StorageMoneyScreen.id);
            },),
          ],
        ),
      ),
    );
  }
}
