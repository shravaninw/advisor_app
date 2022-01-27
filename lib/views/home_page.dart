import 'package:advisor_app/ui.dart';
import 'package:advisor_app/views/widgets/app_buttons.dart';
import 'package:advisor_app/views/widgets/app_text_form_field.dart';
import 'package:advisor_app/views/widgets/form_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AppProviderMixin<HomePage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: colors.primary.withOpacity(0.2),
            ),
            child: Icon(
              Icons.settings,
              color: colors.primary,
            ),
          ),
        ),
        foregroundColor: colors.black,
        backgroundColor: colors.white,
        title: AppText(widget.title ?? ''),
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
