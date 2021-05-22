import 'package:agro/domain/auth_failure.dart';
import 'package:agro/usecases/auth/i_auth_backend.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthBackendImpl implements IAuthBackend {
  @override
  Future<AuthFailure?> registerUser(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      return e.code == 'email-already-in-use'
          ? AuthFailure.emailAlreadyInUse
          : e.code == 'weak-password'
              ? AuthFailure.passwordNotSuitable
              : e.code == 'invalid-email'
                  ? AuthFailure.wrongEmail
                  : AuthFailure.cannotReachServer;
    }
  }
}
