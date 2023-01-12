import 'package:flutter/material.dart';
import 'package:paytm2/numbers_field.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(

        body :SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(children: [
              SizedBox(height: 20,),
              Row(children: [
                Column(children: [
                  IconButton(onPressed: null, icon:Icon(IconData(0xee85, fontFamily: 'MaterialIcons', matchTextDirection: true),size: 35)),
                  Text(''),
                  Text(''),
                ],),

                SizedBox(width: 80),
                Column(children: [
                  Image.asset('images/profile.jpg',height: 50,width: 50,),
                  SizedBox(height: 5,),
                  Text('Sonit Mehrotra'),
                  SizedBox(height: 5,),
                  Text('mehrotra.sonit@paytm'),
                ],)

              ],),
              SizedBox(height: 50,),
              Row(children: [
                Column(children: [
                  Text('You are paying'),
                  SizedBox(height: 10,),
                  NumbersField(),
                ],)

              ],)

            ],),
          ),
        ),
      ),
    );
  }
}
