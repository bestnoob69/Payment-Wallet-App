import 'package:flutter/material.dart';
import 'package:paytm2/waste_buttons.dart';
import 'package:intl/intl.dart';


class MyCard extends StatefulWidget {
  String name,money;
  MyCard({required this.name,required this.money});
  //const MyCard({Key? key},required this.name) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState(name,money);
}

class _MyCardState extends State<MyCard> {
  String name,money;
  _MyCardState(this.name,this.money);
  final now = DateTime.now();
  String date = DateFormat('d').format(DateTime.now());
  String month = DateFormat('MMM').format(DateTime.now());
  //List<String> months = ["Jan","Feb","Mar","Apr","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];

  DateTime timeNow = DateTime.now();
  String formattedTime = DateFormat.jm().format(DateTime.now());

  //month = months[month];
  
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.fromLTRB(15, 10, 10, 0),
      height: 320,
      decoration: BoxDecoration(color: const Color(0xffdef6ff),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Padding(
        padding: const EdgeInsets.fromLTRB(0,20,0,0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 30),
                  Image.asset('images/cart.PNG',fit: BoxFit.cover,width: 40,height: 40,),
                  SizedBox(width: 5),
                  Text(name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    //margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(children: [
                      Text('78',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                    ),
                  ),
                ],
              ),

            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('\₹' + money,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                SizedBox(width: 5),
                Image.asset('images/tick.jpg',fit: BoxFit.cover,width: 40,height: 40,),
              ],
            ),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Image.asset('images/cart.png',fit: BoxFit.cover,width: 35,height: 30,),
                  Text(
                    date + ' ' + month + ', ',
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontFamily: 'Nunito',
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    formattedTime,
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontFamily: 'Nunito',
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Image.asset('images/cart.png',fit: BoxFit.cover,width: 35,height: 30,),
                  Text(
                    'Order ID: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent,
                      fontFamily: 'Nunito',
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'XX 0074',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent,
                      fontFamily: 'Nunito',
                      fontSize: 16,
                    ),
                  ),
                  Icon(IconData(0xe246, fontFamily: 'MaterialIcons'),color: Colors.lightBlueAccent),
                ],
              ),
            ),
            SizedBox(height: 15),
            Row(children: [
              SizedBox(width: 80),
              WasteButton(display: 'Share',),
              SizedBox(width: 15),
              WasteButton(display: 'Repeat',),
              SizedBox(width: 15),
              WasteButton(display: 'Split',),
            ],
            ),
          ],
        ),
      ),



    );
  }
}
