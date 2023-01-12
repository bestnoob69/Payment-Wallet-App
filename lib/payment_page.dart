import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(children: [
          IconButton(onPressed: null, icon:Icon(IconData(0xee85, fontFamily: 'MaterialIcons', matchTextDirection: true),size: 35)),
          Image.asset('images/profile.jpg'),
        ],)
      ],),
    );
  }
}
