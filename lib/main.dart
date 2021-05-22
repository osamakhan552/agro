import 'package:agro/backend/auth/auth_backend_impl.dart';
import 'package:agro/usecases/auth/register_user.dart';
import 'package:flutter/material.dart';

import 'ui/auth/register_user_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agro',
      home: RegisterUserUI(registerUser: RegisterUser(AuthBackendImpl())),
    );
  }
}
