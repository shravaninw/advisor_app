import 'dart:async';

import '../../ui.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with AppProviderMixin<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      context.navigation.onBoarding();
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => InitialPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: colors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 100),
            Image.asset(
              assets.appLogo,
              scale: 4,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100.0, vertical: 32),
              child: Text(
                'Today you work for money, one day money can work for you.',
                style: TextStyle(
                  color: colors.white,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
