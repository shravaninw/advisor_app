import '../core/services/auth_service.dart';
import 'auth_service_impl.dart';

class AppRepository {
  AppRepository();

  static AppRepository? _repo;

  late AuthService _authService = AuthServiceImpl();

  Future<void> init() async {}

  Future<void> dispose() async {
    await _authService.dispose();
  }

  AuthService get authService => _authService;
}
