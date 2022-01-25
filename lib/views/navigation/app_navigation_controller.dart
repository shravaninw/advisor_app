import 'package:advisor_app/core/navigation/navigation.dart';
import 'package:advisor_app/main_page.dart';
import 'package:advisor_app/ui.dart';
import 'package:advisor_app/views/navigation/app_navigation_state.dart';
import 'package:flutter/material.dart';

class AppNavigationController extends AppFlowController<AppNavigationState> {
  AppNavigationController() : super(AppNavigationState());

  // ignore: unused_element
  void _setState(AppNavigationState state) => this.state = state;

  void updateUserName() {
    state = state.rebuild((AppNavigationStateBuilder b) => b.value = null);
  }

  void submit() {
    state = state.rebuild((AppNavigationStateBuilder b) => b.value = 'Updated');
  }

  @override
  List<Page<Object>> onGeneratePages(
    AppNavigationState state,
    List<Page<Object>> currentPages,
  ) {
    return <Page<Object>>[
      const MaterialPage<Object>(child: MainPage()),
      if (state.value == null)
        const MaterialPage<Object>(
          child: _NextPage(),
        ),
    ];
  }
}

class _NextPage extends StatelessWidget {
  const _NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: CustomAppBar(),
      body: TextButton(
        child: const AppText('Reset'),
        onPressed: () => context.navigation.submit(),
      ),
    );
  }
}
