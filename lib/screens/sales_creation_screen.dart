import 'package:flutter/material.dart';
import 'package:sales/components/costum_btn.dart';
import 'package:sales/constance.dart';
class SalesCreationScreen extends StatefulWidget {
  static const String id = 'salesCreationScreen';

  @override
  _SalesCreationScreenState createState() => _SalesCreationScreenState();
}

class _SalesCreationScreenState extends State<SalesCreationScreen> {

  int clientID = 10001;
  String clientName = '';
  String clientAddress = '';
  String clientPhoneNumber = '';
  String itemAmount ;
  String itemPrice = '36.17';
  String totalInputPrice;
  double totalPrice;
  String itemDescription = '';
  String priceToRender;



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
              enabled: false,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              onChanged: (value){
                itemPrice = value;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'اكتب  سعر الصنف هنا'),
            ),
            SizedBox(
              width: double.infinity,
              height: 24.0,
            ),
            TextField(
              enabled: false,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              onChanged: (value){
                totalInputPrice = value;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'اكتب اجمالي الفاتوره هنا'),
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
              clientID++;
              double amount = double.parse(itemAmount);
              double price = double.parse(itemPrice);
              totalPrice = (amount * price);
              priceToRender = totalPrice.toStringAsFixed(3);

              print('رقم العميل : $clientID');
              print('اسم العميل: $clientName');
              print('عنوان العميل: $clientAddress');
              print('رقم هاتف العميل: $clientPhoneNumber');
              print('ملاحظات: $itemDescription');
              print('سعر الصنف: $itemPrice جنيه');
              print('كميه الصنف: $itemAmount قطعه');
              print('اجمالي الفاتوره: $priceToRender جنيه');
                // Navigator.pushNamed(context, SalesCreationScreen.id);
              },),
          ],
        ),
      ),
    );
  }
}
