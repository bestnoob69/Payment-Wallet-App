import 'package:flutter/material.dart';
import 'package:paytm2/front_page.dart';
import 'package:paytm2/help_page.dart';
import 'package:paytm2/my_card.dart';
import 'package:paytm2/scan_page.dart';
import 'package:paytm2/tick_mark.dart';
import 'package:paytm2/video_player.dart';

class HomePage extends StatefulWidget {
  String name,money;
  HomePage({required this.name,required this.money});
  //const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState(name,money);
}

class _HomePageState extends State<HomePage> {
  String name,money;
  _HomePageState(this.name,this.money);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          // paytm logo

          Padding(

            padding: const EdgeInsets.fromLTRB(20,15,20,0),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(
                        builder: (context) => FrontPage(),
                      ));
                    },
                    icon: Icon(IconData(0xee85, fontFamily: 'MaterialIcons', matchTextDirection: true),size: 35)),
                //Icon(IconData(0xee85, fontFamily: 'MaterialIcons', matchTextDirection: true),size: 35,),
                //Image.asset('images/arrow.png',fit: BoxFit.cover,width: 35,height: 30,),
                Image.asset('images/Paytm_Logo.png',fit: BoxFit.cover,width: 100,height: 30,),
                // IconButton(onPressed:(){
                //   Navigator.of(context)
                //       .push(MaterialPageRoute(
                //     builder: (context) => FrontPage(),
                //   ));
                // }
                //     , icon: Image.asset('images/Paytm_Logo.png',fit: BoxFit.cover,width: 130,height: 30,)),
                TextButton(
                    onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(
                            builder: (context) => HelpPage(id: ''),
                      ));
                    },

                    child: Text('Help',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                )),
              ],
            ),
          ),
          //SizedBox(height: 25),
          // Stack(
          //
          // ),
          MyCard(name: name,money: money),
          SizedBox(height: 25),
          //
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                  Container(
                      height: 200,
                      width: 375,

                      child: Center(child: Image.asset('images/adv.jpg',))),


                ],),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                        height:140,
                        width: 375,

                        child: Center(child: Image.asset('images/bottom.jpg',))),


                  ],),
              ),
            ],
          ),


        ],


        ),
      ),
    );
  }
}
