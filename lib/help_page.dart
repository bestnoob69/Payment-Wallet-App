import 'package:flutter/material.dart';
import 'package:paytm2/home_page.dart';
import 'package:paytm2/my_card.dart';

class HelpPage extends StatefulWidget {
  String id;
  HelpPage({Key? key,required this.id}) : super(key: key);

  @override
  State<HelpPage> createState() => _HelpPageState(id);
}

class _HelpPageState extends State<HelpPage> {
  String id;
  _HelpPageState(this.id);
  final textEditingController1 = TextEditingController();
  final textEditingController2 = TextEditingController();

  String name ='';
  String money = '';
  RegExp regex = RegExp(r'^[a-z]+\.[a-z]+$');
  RegExp regex1 = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  //String id = '';
  //String value ='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            //Text(regex1.firstMatch(id),style: TextStyle(fontSize: 15),),

            TextField(

              controller: textEditingController1,
              decoration: InputDecoration(border: OutlineInputBorder(),
                hintText: id,
                suffixIcon: IconButton(
                  onPressed: (){
                    textEditingController1.clear();
                  },
                  icon: const Icon(Icons.clear),
                )
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: textEditingController2,
              decoration: InputDecoration(border: OutlineInputBorder(),
                  hintText: 'Money',
                  suffixIcon: IconButton(
                    onPressed: (){
                      textEditingController2.clear();
                    },
                    icon: const Icon(Icons.clear),
                  )
              ),
            ),
            SizedBox(height: 30),
            MaterialButton(
              height: 40,
              color: Colors.blue,
                child: Text('CHANGE',style: TextStyle(color: Colors.white)),
                onPressed: (){
                  name = textEditingController1.text;
                  money = textEditingController2.text;
                  Navigator.of(context)
                      .push(MaterialPageRoute(
                      builder:(context) => HomePage(name : name,money : money)));
                },
            ),
          ],

        ),
      ),
    );
  }

}

