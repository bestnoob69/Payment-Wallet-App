import 'package:flutter/material.dart';
import 'package:paytm2/scan_page.dart';


class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        //color: const Color(0xff97e0ff),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xffc5eeff),
              const Color(0xffc1ecff),
              const Color(0xb5e9ff),
              const Color(0xafe7fe),
              const Color(0xffaae5ff),
              const Color(0xffaae5ff),
              const Color(0xffaae5ff),
            ],
            stops: [0.069,0.73,0.75,0.77,0.79,0.81,0.83],
          ),
        ),
        child: Stack(children: [
          Container(
            // Image.asset('images/Paytm_Logo.png',fit: BoxFit.cover,width: 100,height: 30,),
            child: Column(children: [
              SizedBox(height: 23,),
              Row(
                children : [
                  //  SizedBox(width: 5,),
                  Image.asset('images/full_top_bar.jpg',height: 100,width: MediaQuery.of(context).size.width,),
                ],
              ),
            ],

            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 100),
              decoration: BoxDecoration(
                color: const Color(0xfff5f8fd),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
              ),

            child: Column(

              children: [
              SizedBox(height: 15,),
              Row(
                children: [
                  SizedBox(width: 5,),
                  Image.asset('images/ad_front_page.jpg',fit: BoxFit.cover,width: 380,height: 130,),
                ],
              ),
                SizedBox(height: 10,),
                Container(


                  child: Column(children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                          child: Text('UPI Money Transfer',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: const Color(0xff000000),),),
                        ),
                      ],
                    ),
                    //SizedBox(height: 5,),
                    Row(children: [
                      SizedBox(width: 15,),
                      Column(
                        children: [
                          IconButton(
                            onPressed:(){
                              Navigator.of(context)
                                  .push(MaterialPageRoute(
                                  builder:(context) => ScanPage()));
                            }
                            , icon: Image.asset('images/scan_and_pay.jpg',),iconSize: 60,),
                          Text('Scan & Pay',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: const Color(0xff000000),)),
                          Text('',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: const Color(0xff000000),)),
                        ],
                      ),
                      SizedBox(width: 15,),
                      Column(
                        children: [
                          IconButton(onPressed: null, icon: Image.asset('images/contacts.jpg',),iconSize: 60,),
                          Text('To Mobile or',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: const Color(0xff000000),)),
                          Text('Contact',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: const Color(0xff000000),)),
                        ],

                      ),SizedBox(width: 10,),
                      Column(
                        children: [
                          IconButton(onPressed: null, icon: Image.asset('images/upi.jpg',),iconSize: 60,),
                          Text('To UPI Apps',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: const Color(0xff000000),)),
                          Text('',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: const Color(0xff000000),)),
                        ],
                      ),SizedBox(width: 10,),
                      Column(
                        children: [
                          IconButton(onPressed: null, icon: Image.asset('images/bank.jpg',),iconSize: 60,),
                          Text('To Bank or',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: const Color(0xff000000),)),
                          Text('Self A/c',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: const Color(0xff000000),)),
                        ],
                      ),
                    ],

                    ),
                  ],),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 165,
                  width: 390,
                  decoration: BoxDecoration(color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(blurRadius: 0.01),
                      ]
                  )



                ),
                SizedBox(height: 10,),
                Container(


                    child: Column(children: [

                      //SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                        child: Row(children: [
                          SizedBox(width: 15,),
                          Column(
                            children: [
                              IconButton(onPressed: null, icon: Image.asset('images/pic_1.jpg',),iconSize: 40,),
                              Text('Balance &',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: const Color(0xff000000),)),
                              Text('History',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: const Color(0xff000000),)),
                            ],
                          ),
                          SizedBox(width: 25,),
                          Column(
                            children: [
                              IconButton(onPressed: null, icon: Image.asset('images/pic_2.jpg',),iconSize: 40,),
                              Text('Paytm',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: const Color(0xff000000),)),
                              Text('Postpaid',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: const Color(0xff000000),)),
                            ],

                          ),SizedBox(width: 25,),
                          Column(
                            children: [
                              IconButton(onPressed: null, icon: Image.asset('images/pic_3.jpg',),iconSize: 40,),
                              Text('Paytm Wallet',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: const Color(0xff000000),)),
                              Text('',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: const Color(0xff000000),)),
                            ],
                          ),SizedBox(width: 25,),
                          Column(
                            children: [
                              IconButton(onPressed: null, icon: Image.asset('images/pic_4.jpg',),iconSize: 40,),
                              Text('Personal',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: const Color(0xff000000),)),
                              Text('Loan',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: const Color(0xff000000),)),
                            ],
                          ),
                        ],

                        ),
                      ),
                    ],),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 125,
                    width: 390,
                    decoration: BoxDecoration(color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(blurRadius: 0.01),
                      ]
                    )



                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    SizedBox(width: 5,),
                    Image.asset('images/bottom_final.jpg',fit: BoxFit.cover,width: 380,height: 233,),
                  ],
                ),


            ],

            ),


            ),
        ],),
      ),
    );
  }
}
