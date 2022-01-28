import '../core/services/auth_service.dart';
import '../core/view_model/view_model.dart';
import '../data/repository.dart';
import '../data/repository_provider.dart';
import '../model/app_state.dart';
import '../model/auth_login.dart';
import '../provider/app_state_notifier.dart';
import '../ui.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:state_notifier/state_notifier.dart';

class AppProvider extends StatelessWidget {
  const AppProvider({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<AppViewModel, AppState>(
      create: (BuildContext context) => AppViewModel(context.repo),
      child: child,
    );
  }
}

class AppViewModel extends AppStateNotifier<AppState>
    with LocatorMixin
    implements AppBaseViewModel {
  AppViewModel(this._repo) : super(AppState());
  final AppRepository _repo;

  AuthService get authService => _repo.authService;

  @override
  Future<void> init() async {}

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    print(email);

    final AuthLogin? u =
        await authService.signIn(email: email, password: password);
    state = state.rebuild((AppStateBuilder b) {
      b.authLogin = u?.toBuilder();
    });
  }

  Future<void> signOut() async {
    await authService.signOut();
  }

  Future<String> forgetPassword({required String email}) async {
    final String message = await authService.forgetPassword(email: email);
    return message;
  }
}
