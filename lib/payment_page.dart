import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


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
                  IconButton(onPressed:(){
                    Navigator.pop(context);
                  }
                      , icon:Icon(IconData(0xee85, fontFamily: 'MaterialIcons', matchTextDirection: true),size: 35)),
                  Text(''),
                  Text(''),
                ],),

                SizedBox(width: 100),
                Column(children: [
                  Image.asset('images/profile.jpg',height: 50,width: 50,),
                  SizedBox(height: 10,),
                  Text('Sonit Mehrotra',style: TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: const Color(0xfff263450)),),
                  //SizedBox(height: 5,),

                ],)

              ],),
              Row(
                children: [
                  SizedBox(width: 105,),
                  Image.asset('images/upi_pic.jpg',height: 30,width: 20,),
                  SizedBox(width: 5),
                  Text('mehrotra.sonit@paytm',style: TextStyle(fontSize:15,color: const Color(0xfff263450)),),
                ],
              ),
              SizedBox(height: 70,),
              Row(children: [
                SizedBox(width: 140,),
                Column(children: [
                  Text('You are Paying', style: TextStyle(fontSize: 15,),),
                  //SizedBox(height: 10,),
                ],),

              ],),

              SizedBox(
                width: 100,
                //height: 100,
                child: TextField(
                  style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),
                  decoration: new InputDecoration.collapsed(hintText : '₹0',),
                  keyboardType: TextInputType.number,
                  inputFormatters:<TextInputFormatter> [FilteringTextInputFormatter.digitsOnly],
                ),
              ),
              SizedBox(height: 240),
              Row(children: [
                SizedBox(width: 5,),
                //IconButton(padding: EdgeInsets.all(0.0),onPressed: null, icon: Image.asset('images/bank_pic.jpg',width: 400,height: 250,),iconSize: 300,),
                GestureDetector(onTap: () => null,
                child: Image.asset('images/bank_pic.jpg',width: 385,height: 250,),)
                // Image.asset('images/bank_pic.jpg',width: 385,height: 250,)
              ],)
              //Image.asset('images/bank_pic.jpg',fit:BoxFit.cover,width: 100,height: 50,),

            ],),


          ),
        ),
      ),
    );
  }
}
