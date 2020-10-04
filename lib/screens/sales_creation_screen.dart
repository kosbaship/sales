import 'package:flutter/material.dart';
import 'package:sales/components/costum_btn.dart';
import 'package:sales/constance.dart';
class SalesCreationScreen extends StatefulWidget {
  static const String id = 'salesCreationScreen';

  @override
  _SalesCreationScreenState createState() => _SalesCreationScreenState();
}

class _SalesCreationScreenState extends State<SalesCreationScreen> {

  int clientID = 00001;
  String clientName = '';
  String clientAddress = '';
  String clientPhoneNumber = '';
  String itemAmount = '';
  String itemPrice = '';
  String totalPrice = '';
  String itemDescription = '';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('انشاء فاتوره مبيعات'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Center(
            //   child: Text('رقم العميل: $clientID',
            //   style: kTextStyle
            //   ),
            // ),
            SizedBox(
              width: double.infinity,
              height: 24.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.text,
              onChanged: (value){
                clientName = value;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'اكتب اسم العميل هنا'),
            ),
            SizedBox(
              width: double.infinity,
              height: 24.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.text,
              onChanged: (value){
                clientAddress = value;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'اكتب عنوان العميل هنا'),
            ),
            SizedBox(
              width: double.infinity,
              height: 24.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.phone,
              onChanged: (value){
                clientPhoneNumber = value;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'اكتب رقم هاتف العميل هنا'),
            ),
            SizedBox(
              width: double.infinity,
              height: 24.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              onChanged: (value){
                itemAmount = value;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'اكتب الكميه اللي هتتباع هنا'),
            ),
            SizedBox(
              width: double.infinity,
              height: 24.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              onChanged: (value){
                totalPrice = value;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'اكتب اجمالي سعر الفاتوره هنا'),
            ),
            SizedBox(
              width: double.infinity,
              height: 24.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.multiline,
              minLines: 5,
              maxLines: 10,
              onChanged: (value){
                itemDescription = value;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'اكتب البيان (وصف المنتج) هنا'),
            ),
            SizedBox(
              width: double.infinity,
              height: 24.0,
            ),
            MainBTN(btnName: 'انشاء فاتوره',
              onClick: (){
                // Navigator.pushNamed(context, SalesCreationScreen.id);
              },),
          ],
        ),
      ),
    );
  }
}
