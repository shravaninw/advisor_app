import 'package:flutter_state_notifier/flutter_state_notifier.dart';

import 'core/navigation/navigation.dart';
import 'data/repository.dart';
import 'data/repository_provider.dart';
import 'ui.dart';
import 'view_model/app_view_model.dart';
import 'views/navigation/app_navigation_controller.dart';
import 'views/navigation/app_navigation_state.dart';

void main() {
  final AppRepository repo = AppRepository();

  runApp(
    AppRepositoryProvider(
      repo: repo,
      child: AppProvider(
        child:
            StateNotifierProvider<AppNavigationController, AppNavigationState>(
          create: (_) => AppNavigationController(),
          child: const MyApp(),
        ),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: theme.lightTheme,
      title: 'Flutter Demo',
      routeInformationParser: AppRouteParser(),
      routerDelegate:
          AppRouteDelegate<AppNavigationController>(context.navigation),
    );
  }
}
