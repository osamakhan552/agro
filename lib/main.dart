import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AGRO APP'),
        ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget> [
          RaisedButton(
            onPressed: (){},
            child: Icon(
              Icons.volume_off,
              color: Colors.black,
            ),
            color: Colors.grey,
          ),

        ],
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('Osama');
          },
          backgroundColor: Colors.red[500],
          child: Text('Press',
          ),
          splashColor: Colors.black,
        ),


      ),
    );
  }
}
