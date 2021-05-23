import 'package:firebase_auth/firebase_auth.dart';

class FirebaseServices{

  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future signInAnoy() async{

    try{
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return user;
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }

}