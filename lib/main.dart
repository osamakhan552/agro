import 'package:agro/UI/USER/UserStart.dart';
import 'package:flutter/material.dart';
import 'package:agro/UI/home.dart';
import 'package:agro/UI/USER/UserSignIn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
     home:home(),
    routes: <String,WidgetBuilder>{
          "UserStart":(BuildContext context)=>UserStart(),
          "UserSignIn":(BuildContext context)=>UserSignIn(),
          "home":(BuildContext context)=>home(),

    },

     );
  }
}

