import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(height: 5),
          Container(
            height: 300.0,
            child: Image.asset('images/start.jpg',
            fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 10),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(onPressed: (){},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.settings,),
                    ],
                  ),

               )

              ],
            ),
          SizedBox(height: 100),

        ],
      ),
    ),
    );

  }
}
