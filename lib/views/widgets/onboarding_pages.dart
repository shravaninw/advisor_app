import 'package:advisor_app/views/widgets/app_buttons.dart';

import '../../ui.dart';
import 'onboarding_page.dart';

class OnBoardingPages extends StatefulWidget {
  const OnBoardingPages({Key? key}) : super(key: key);

  @override
  State<OnBoardingPages> createState() => _OnBoardingPagesState();
}

class _OnBoardingPagesState extends State<OnBoardingPages> {
  PageController _controller = PageController();

  void onChangePage(int pageNo) {
    _controller.jumpToPage(pageNo);
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        OnBoardingPage(
          buttonText: AppText('Skip'),
          loadingValue: 0,
          title: 'Fin System',
          description:
              'Watch videos to understand the important building blocks of a financial house.',
          button: NextPrimaryButton(
            onPressed: () {
              onChangePage(1);
            },
          ),
        ),
        OnBoardingPage(
          buttonText: AppText('Skip'),
          loadingValue: 1,
          title: '1-1 Chat',
          description:
              'Get personalised advice anytime from a licensed financial advisor.',
          button: NextPrimaryButton(
            onPressed: () {
              onChangePage(2);
            },
          ),
        ),
        OnBoardingPage(
          buttonText: AppText('Skip'),
          loadingValue: 2,
          title: 'Anna Support',
          description:
              'Watch videos to understand the important building blocks of a financial house.',
          button: NextSecondaryButton(
            onPressed: () {
              context.navigation.login();
            },
          ),
        ),
      ],
    );
  }
}
