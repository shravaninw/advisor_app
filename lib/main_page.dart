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
            icon: AppIcon(Icons.search),
            label: 'prospects',
          ),
          BottomNavigationBarItem(
            icon: AppIcon(Icons.chat),
            label: 'chat',
          ),
          BottomNavigationBarItem(
            icon: AppIcon(Icons.link),
            label: 'Your link',
          ),
          BottomNavigationBarItem(
            icon: AppIcon(Icons.more),
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
