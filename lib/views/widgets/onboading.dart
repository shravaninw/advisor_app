import '../../ui.dart';
import 'app_buttons.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  Image.asset(assets.onboardPage),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: AppHeadLine4(
                      'The Fin System',
                    ),
                  ),
                  BodyText2(
                      'Generate prospects faster, nurture them and book more appointments.'),
                ].mapPadding(padding: EdgeInsets.all(8)),
              ),
              ButtonWithPageIndicator(
                button: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppSecondaryButton(
                      onPressed: () {},
                      child: AppText('Skip'),
                    ),
                    AppPrimaryButton(
                      onPressed: () {},
                      child: AppText('Next'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonWithPageIndicator extends StatelessWidget {
  const ButtonWithPageIndicator({Key? key, required this.button})
      : super(key: key);
  final Widget button;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 5; i++) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 2,
                  backgroundColor: colors.black.withOpacity(0.2),
                ),
              )
            ]
          ],
        ),
        button,
      ].mapPadding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16)),
    );
  }
}
