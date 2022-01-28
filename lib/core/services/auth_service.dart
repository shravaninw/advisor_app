import 'package:advisor_app/model/auth_login.dart';

import 'app_service.dart';

abstract class AuthService extends AppService {
  Future<AuthLogin?> signIn({
    required String email,
    required String password,
  });

  Future<String> forgetPassword({
    required String email,
  });

  Future<void> signOut();
}
