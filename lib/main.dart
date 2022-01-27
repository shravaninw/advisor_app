import 'package:advisor_app/data/repository.dart';
import 'package:advisor_app/data/repository_provider.dart';
import 'package:advisor_app/view_model/app_view_model.dart';
import 'package:advisor_app/views/navigation/app_navigation_controller.dart';
import 'package:advisor_app/views/navigation/app_navigation_state.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

import 'core/navigation/navigation.dart';
import 'ui.dart';

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
