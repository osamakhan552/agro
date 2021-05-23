import 'package:agro/UI/USER/UserStart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}


class _homeState extends State<home> {
navigateToUserStart() async {
    // Navigator.of(context).pushReplacementNamed("UserStart");
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>UserStart()));

}

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
                RaisedButton(
                  onPressed: (){},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.settings),
                      Text('Farmer'),
                    ],
                  ),
                  color: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
               ),
                SizedBox(width: 10),
                RaisedButton(
                  onPressed: navigateToUserStart,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.face),
                      Text('User'),
                    ],
                  ),
                  color: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
          SizedBox(height: 100),
          RichText(
            text: TextSpan(
              text: 'Welcome to',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '  AGRO MART',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent,
                    shadows: [
                      Shadow(
                        blurRadius: 5.0,
                        color: Colors.blue,
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 60),
        ],
      ),
    ),
    );

  }
}
