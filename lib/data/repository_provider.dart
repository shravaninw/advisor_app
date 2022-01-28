import 'package:advisor_app/data/repository.dart';

import '../ui.dart';

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
