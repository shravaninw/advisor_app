import 'package:advisor_app/core/exceptions/exceptions.dart';
import 'package:advisor_app/views/widgets/app_buttons.dart';
import 'package:advisor_app/views/widgets/app_text_form_field.dart';

import '../../ui.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword>
    with FormMixin<ForgotPassword>, StateMixin<ForgotPassword> {
  String email = '';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: colors.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 80, 24, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppHeadLine4('Reset Password'),
                    AppHeadLine6(
                        'Enter your email to send a password reset code.'),
                  ].mapPadding(padding: EdgeInsets.all(8)),
                ),
              ),
              AppTextFormField(
                validator: (String? value) {
                  if (value == null || value.isEmpty)
                    return 'Field Cannot be empty';
                  return null;
                },
                hintText: 'Email',
              ),
              loading
                  ? AppProgressIndicator()
                  : NextPrimaryButton(
                      onPressed: () async {
                        try {
                          if (validateForm()) {
                            setLoading();
                            print(loading);
                            final String message = await context.appViewModel
                                .forgetPassword(email: email);

                            print(loading);
                            showSnack(message);
                            context.navigation.login();
                          }
                        } catch (e, s) {
                          showSnack((e as APIException).apiError!.error);
                        }
                        resetLoading();
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
