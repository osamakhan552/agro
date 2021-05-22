import 'package:agro/domain/auth_failure.dart';

abstract class IAuthBackend {
  Future<AuthFailure?> registerUser(String email, String password);
}
