import 'package:advisor_app/core/services/auth_service.dart';
import 'package:advisor_app/core/view_model/view_model.dart';
import 'package:advisor_app/data/repository.dart';
import 'package:advisor_app/data/repository_provider.dart';
import 'package:advisor_app/model/app_state.dart';
import 'package:advisor_app/model/auth_login.dart';
import 'package:advisor_app/provider/app_state_notifier.dart';
import 'package:advisor_app/ui.dart';
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
