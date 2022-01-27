import 'package:advisor_app/ui.dart';
import 'package:advisor_app/views/home_page.dart';
import 'package:advisor_app/views/widgets/app_buttons.dart';
import 'package:advisor_app/views/widgets/onboarding_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(title: 'Home Page'),
    OnBoardingPage(
      buttonText: AppText('Skip'),
      loadingValue: 0,
      title: 'Fin System',
      description:
          'Watch videos to understand the important building blocks of a financial house.',
      button: NextPrimaryButton(
        onPressed: () {},
      ),
    ),
    Text('3'),
    Text('4'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: AppIcon(icons.search),
            label: 'prospects',
          ),
          BottomNavigationBarItem(
            icon: AppIcon(icons.chat),
            label: 'chat',
          ),
          BottomNavigationBarItem(
            icon: AppIcon(icons.link),
            label: 'Your link',
          ),
          BottomNavigationBarItem(
            icon: AppIcon(icons.more),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: colors.primary,
        unselectedItemColor: colors.black,
        iconSize: 24,
        onTap: _onItemTapped,
        elevation: 5,
        showUnselectedLabels: true,
      ),
      body: _widgetOptions[_selectedIndex],
    );
  }
}
