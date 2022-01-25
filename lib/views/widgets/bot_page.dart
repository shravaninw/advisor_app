import 'package:advisor_app/ui.dart';
import 'package:advisor_app/views/widgets/onboading.dart';

import 'app_buttons.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 120.0),
                child: Column(
                  children: [
                    Container(
                      width: 148,
                      height: 190,
                      child: Image.asset(assets.bot),
                    ),
                    AppHeadLine5(
                      'Get started by logging into your account.',
                      textAlign: TextAlign.center,
                    ),
                  ].mapPadding(padding: EdgeInsets.all(16)),
                ),
              ),
              ButtonWithPageIndicator(
                button: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppSecondaryButton(
                      onPressed: () {},
                      child: AppText('Create Account'),
                    ),
                    AppPrimaryButton(
                      onPressed: () {},
                      child: AppText('Login'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
