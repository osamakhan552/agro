import 'package:agro/SERVICES/auth.dart';
import 'package:flutter/material.dart';

class UserSignIn extends StatefulWidget {
  @override
  _UserSignInState createState() => _UserSignInState();
}

class _UserSignInState extends State<UserSignIn> {
   final FirebaseServices _auth = FirebaseServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 40,
        title: Text(
          'Login',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[50],
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 150,horizontal: 150),
              child: RaisedButton(
                onPressed: () async {
                  dynamic result = await _auth.signInAnoy();
                  if(result == null)
                    {
                      print('Failed to sign in !!!!!!');
                    }
                  else {
                    print('Successfull!!!!!');
                    print(result);
                  }
                  },
                child: Text('Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                ),
                color: Colors.orange,
                elevation: 10,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
