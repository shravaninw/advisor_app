import 'package:advisor_app/core/exceptions/exceptions.dart';
import 'package:advisor_app/views/widgets/app_buttons.dart';
import 'package:advisor_app/views/widgets/app_text_form_field.dart';
import 'package:advisor_app/views/widgets/extensions.dart';

import '../../ui.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with FormMixin<LoginPage>, StateMixin<LoginPage> {
  String email = '';

  String password = '';
  bool isPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: colors.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 160, 24, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppHeadLine4('Sign In to your account'),
                    AppHeadLine6(
                        'Dont have a account? Click here to create on'),
                  ].mapPadding(padding: EdgeInsets.all(8)),
                ),
              ),
              Column(
                children: [
                  AppTextFormField(
                    validator: (String? value) {
                      if (value == null || value.isEmpty)
                        return 'Field Cannot be empty';
                      return null;
                    },
                    hintText: 'Email',
                  ),
                  AppTextFormField(
                    isObscure: isPasswordObscure,
                    validator: (String? value) {
                      if (value == null || value.isEmpty)
                        return 'Field Cannot be empty';
                      return null;
                    },
                    suffix: IconButton(
                      onPressed: () {
                        isPasswordObscure = !isPasswordObscure;
                        setState(() {});
                      },
                      icon: Icon(
                        isPasswordObscure ? icons.view : icons.viewOff,
                        color: colors.hintTextColor,
                      ),
                    ),
                    hintText: 'Password',
                  ),
                ].mapPadding(padding: EdgeInsets.all(8)),
              ),
              Column(
                children: [
                  loading
                      ? AppProgressIndicator()
                      : NextPrimaryButton(
                          onPressed: () async {
                            try {
                              if (validateForm()) {
                                setLoading();
                                print(loading);
                                await context.appViewModel
                                    .signIn(email: email, password: password);

                                print(loading);
                                showSnack('Successfully LoggedIn');
                                context.navigation.home();
                              }
                            } catch (e, s) {
                              showSnack((e as APIException).message);
                            }
                            resetLoading();
                          },
                        ),
                  TextButton(
                    onPressed: () {
                      context.navigation.forgotPassword();
                    },
                    child: AppText(
                      'Forgot Password?',
                      style: TextStyle(color: colors.primary, fontSize: 16),
                    ),
                  ),
                ].mapPadding(padding: EdgeInsets.all(24)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
