import 'package:agro/usecases/auth/register_user.dart';
import 'package:flutter/material.dart';

class RegisterUserUI extends StatelessWidget {
  final RegisterUser registerUser;

  const RegisterUserUI({Key? key, required this.registerUser})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    //like this -- registerUser.call("email", "password");
    return Container();
  }
}
