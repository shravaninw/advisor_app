import 'package:advisor_app/model/app_state.dart';
import 'package:advisor_app/ui.dart';
import 'package:advisor_app/view_model/app_view_model.dart';
import 'package:advisor_app/views/navigation/app_navigation_controller.dart';

extension ProviderUtils on BuildContext {
  AppViewModel get appViewModel => read<AppViewModel>();

  AppNavigationController get navigation => read<AppNavigationController>();
}

mixin AppProviderMixin<S extends StatefulWidget> on State<S> {
  AppState get appState => context.watch<AppState>();
}
