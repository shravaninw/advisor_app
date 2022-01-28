import 'ui.dart';
import 'views/home_page/chat_page.dart';
import 'views/home_page/links_page.dart';
import 'views/home_page/more_page.dart';
import 'views/home_page/prospects_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    ProspectsPage(),
    ChatPage(),
    LinksPage(),
    MorePage(),
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
