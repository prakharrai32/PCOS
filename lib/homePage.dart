import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("PCOS and Gyno Help"),
          ),

          body: GridView.count(
            crossAxisCount: 1,
            padding: EdgeInsets.all(16.0),
            childAspectRatio: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            children: <Widget>[
              myGridItems("Self Diagnosis","https://images.agoramedia.com/EHBlogImages/trevis-gleason/2016/12/The-Powers-and-Dangers-of-Self-Diagnosis-1440x810.jpg",0xFFFF9800,0xFFEF6C00),
              myGridItems("Period Tracker","https://thecreativeshour.com/wp-content/uploads/2020/09/Period-Tracker-Bullet-Journal-10-1024x910.jpg" , 0xFFE91E63,0xFF880E4F),
              myGridItems("Diet Planner", "https://th.bing.com/th/id/Ra68372c567d632312f6509b570047e14?rik=0YfLlyw0uMYuWw&riu=http%3a%2f%2fwatchfit.com%2fwp-content%2fuploads%2f2016%2f01%2fpersonalized-diet-plan_1.jpg&ehk=A1cjab4rNL16MB%2bwGgk0bP745yJ1V2XB5i2dBE6Y9RQ%3d&risl=&pid=ImgRaw", 0xFF8BC34A,0xFF558B2F),
              myGridItems("Exercise Tracker", "https://cnet2.cbsistatic.com/img/h2UGmSEMejQ7hvFL3mznQGNuqAg=/2019/12/18/98fd63aa-d21b-49db-b0d9-570be082efed/wellness-stock-16.jpg", 0xFF03A9F4,0xFF0277BD),
            ],
          )
      );

  }

  Widget myGridItems(String gridName,String gridImage,int color1,int color2){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        gradient: new LinearGradient(
            colors: [
              Color(color1),
              Color(color2),
            ],
          begin: Alignment.centerLeft,
          end: new Alignment(1.0, 1.0),
        )
      ),
      child: Stack(
        children: <Widget>[
          Opacity(opacity: 0.3,
          child: Container(
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              image: DecorationImage(
                image: new NetworkImage(gridImage),
                fit: BoxFit.fill,
              )
            ),
          ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(gridName,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
          )
            ],
          )
        ],
      ),
    );
  }
}
