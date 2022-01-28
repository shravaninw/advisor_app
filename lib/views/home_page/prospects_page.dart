import '../../ui.dart';
import '../widgets/app_buttons.dart';
import '../widgets/app_text_form_field.dart';
import '../widgets/form_tile.dart';
import 'app_bar.dart';

class ProspectsPage extends StatefulWidget {
  const ProspectsPage({
    Key? key,
  }) : super(key: key);

  @override
  _ProspectsPageState createState() => _ProspectsPageState();
}

class _ProspectsPageState extends State<ProspectsPage>
    with AppProviderMixin<ProspectsPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: CustomAppBar(
        leading: null,
        toolbarHeight: 80,
        titleSpacing: 16,
        centerTitle: false,
        foregroundColor: colors.black,
        backgroundColor: colors.white,
        title: HomeAppBar(
          title: 'Prospects',
          icon: icons.search,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            AppPrimaryButton(
              onPressed: () {},
              child: AppText('button'),
            ),
            AppSecondaryButton(
              onPressed: () {},
              child: AppText('button'),
            ),
            FormTile(
              title: 'email',
              textField: AppTextFormField(
                onChanged: (String? value) {
                  email = value ?? '';
                  setState(() {});
                },
                hintText: 'email',
              ),
            ),
            FormTile(
              title: 'Password',
              textField: AppTextFormField(
                hintText: 'password',
                onChanged: (String? value) {
                  password = value ?? '';
                  setState(() {});
                },
              ),
            ),
            NextPrimaryButton(
              onPressed: () async {
                await context.appViewModel
                    .signIn(email: 'me@iamharsh.dev', password: 'saymemyname');
              },
            ),
            NextSecondaryButton(
              onPressed: () async {
                try {
                  await context.appViewModel
                      .forgetPassword(email: 'me@iamharshgmail.dev');
                } catch (e) {}
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.navigation.updateUserName(),
        tooltip: 'Increment',
        child: const AppIcon(Icons.add),
      ),
    );
  }
}
