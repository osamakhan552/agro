import 'package:agro/domain/auth_failure.dart';

import 'i_auth_backend.dart';

class RegisterUser {
  final IAuthBackend _authBackend;
  RegisterUser(this._authBackend);

  Future<AuthFailure?> call(String email, String password) async {
    AuthFailure? operation = await _authBackend.registerUser(email, password);
    return operation;
  }
}
