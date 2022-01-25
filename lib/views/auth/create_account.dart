import 'package:advisor_app/ui.dart';
import 'package:advisor_app/views/widgets/app_buttons.dart';
import 'package:advisor_app/views/widgets/app_text_form_field.dart';
import 'package:advisor_app/views/widgets/onboading.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              assets.appLogoColor,
              scale: 3,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppHeadLine4('Create your company admin contact'),
                AppHeadLine6(
                  'Enter the following details to move to the next step.',
                ),
                AppTextFormField(
                  hintText: 'Your Business Name',
                ),
                AppTextFormField(
                  hintText: 'Your Business Name',
                ),
                AppTextFormField(
                  hintText: 'Your Business Name',
                ),
              ].mapPadding(padding: EdgeInsets.symmetric(vertical: 8)),
            ),
            ButtonWithPageIndicator(
                button: AppExpandedPrimaryButton(
              onPressed: () {},
              child: AppText('Next'),
            ))
          ],
        ),
      ),
    );
  }
}
