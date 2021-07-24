import 'package:flutter/material.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:login/View/Login.dart';


class BoloMassa extends StatefulWidget {
  @override
  _BoloMassaState createState()=>_BoloMassaState();

}
class _BoloMassaState extends State<BoloMassa> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
         child: Column(
           children: [
             SizedBox(
               width: double.infinity,
               height: 50,
             )],
         ),
        ),
      bottomNavigationBar: BottomBar(
        currrentIndex=0,
        items:[
          BottomNavigationBarItem(icon: icon)BarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.blue,
          ),
          BottomBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorites'),
            activeColor: Colors.red,
            darkActiveColor: Colors.red.shade400, // Optional
          ),
          BottomBarItem(
            icon: Icon(Icons.person),
            title: Text('Account'),
            activeColor: Colors.greenAccent.shade700,
            darkActiveColor: Colors.greenAccent.shade400, // Optional
          ),
          BottomBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            activeColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}