import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GynoHelp extends StatefulWidget {
  GynoHelp({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GynoHelp createState() => _GynoHelp();
}
class Item{
  const Item(this.name);
  final String name;
}
class _GynoHelp extends State<GynoHelp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2cfc2),
      appBar: AppBar(
        backgroundColor: Color(0xff260f26),
        title: Text("Gyno Help"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/gyno.png"),
              fit: BoxFit.fill,
            alignment: Alignment.centerLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/me.jpeg"),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: 200,
                  height: 75,
                  child: Text(
                    'Prakhar Rai\nMale Gynecologist\nLucknow, Uttar Pradesh\nPhone No. 9928764210',
                    style: TextStyle(fontSize: 15),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/sushant.jpeg"),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: 200,
                  height: 75,
                  child: Text(
                    'Sushant\nMale Gynecologist\nBokaro, Jharkhand\nPhone No. 8858764210',
                    style: TextStyle(fontSize: 15),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}