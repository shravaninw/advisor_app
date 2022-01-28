import '../ui.dart';
import 'repository.dart';

class AppRepositoryProvider extends Provider<AppRepository> {
  AppRepositoryProvider({
    Key? key,
    required AppRepository repo,
    required Widget child,
  }) : super.value(
          key: key,
          child: child,
          value: repo,
        );
}

extension AppRepoUtils on BuildContext {
  AppRepository get repo => read<AppRepository>();
}
