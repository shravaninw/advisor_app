import 'package:advisor_app/core/navigation/navigation.dart';
import 'package:advisor_app/ui.dart';
import 'package:advisor_app/views/auth/forogt_password.dart';
import 'package:advisor_app/views/auth/login.dart';
import 'package:advisor_app/views/home_page/prospects_page.dart';
import 'package:advisor_app/views/navigation/app_navigation_state.dart';
import 'package:advisor_app/views/widgets/onboarding_pages.dart';
import 'package:flutter/material.dart';

import '../../main_page.dart';

class AppNavigationController extends AppFlowController<AppNavigationState> {
  AppNavigationController() : super(AppNavigationState());

  // ignore: unused_element
  void _setState(AppNavigationState state) => this.state = state;

  void updateUserName() {
    state = state.rebuild((AppNavigationStateBuilder b) => b.value = null);
  }

  void login() {
    state = state.rebuild((AppNavigationStateBuilder b) => b.value = 'login');
  }

  void onBoarding() {
    state =
        state.rebuild((AppNavigationStateBuilder b) => b.value = 'onBoarding');
  }

  void forgotPassword() {
    state = state
        .rebuild((AppNavigationStateBuilder b) => b.value = 'forgotPassword');
  }

  void home() {
    state = state.rebuild((AppNavigationStateBuilder b) => b.value = 'home');
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
      if (state.value == 'login')
        const MaterialPage<Object>(
          child: LoginPage(),
        ),
      if (state.value == 'onBoarding')
        MaterialPage<Object>(
          child: OnBoardingPages(),
        ),
      if (state.value == 'forgotPassword')
        MaterialPage<Object>(
          child: ForgotPassword(),
        ),
      if (state.value == 'home')
        MaterialPage<Object>(
          child: MainPage(),
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
