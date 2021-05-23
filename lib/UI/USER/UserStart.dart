import 'package:agro/UI/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:agro/UI/USER/UserSignIn.dart';

class UserStart extends StatefulWidget {
  @override
  _UserStartState createState() => _UserStartState();
}

class _UserStartState extends State<UserStart> {
  @override

navigateToUserSignIN() async {
    Navigator.of(context).pushReplacementNamed("UserSignIn");
  }


navigateTohome() async {
    Navigator.of(context).pushReplacementNamed("home");

  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Container(
              margin: EdgeInsets.fromLTRB(10, 500, 10, 30),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                  ElevatedButton(onPressed: navigateToUserSignIN,
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      shadowColor: Colors.black,
                    ),
                    ),
                  SizedBox(width: 10),
                  ElevatedButton(onPressed: (){},
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      shadowColor: Colors.black,
                    ),
                  ),
                SizedBox(height: 50),
                ],
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              child: Text(
                'Return to home page?',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[800],
                ),
              ),
              onTap: navigateTohome,
            ),
            SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
