import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/firebase/auth_service.dart';
import 'login_model.dart';

class LoginRepository {
  final AuthService _authService;

  LoginRepository(this._authService);

  Future<User?> loginWithEmail(LoginModel loginModel) async {
    try {
      return await _authService.signInWithEmail(
          loginModel.email, loginModel.password);
    } catch (e) {
      throw Exception("Login failed: ${e.toString()}");
    }
  }

  Future<void> logout() async {
    await _authService.signOut();
  }

  Stream<User?> get authStateChanges => _authService.authStateChanges;
}
