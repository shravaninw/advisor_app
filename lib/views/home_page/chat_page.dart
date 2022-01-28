import '../../ui.dart';
import 'app_bar.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

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
          title: 'Chat',
          icon: icons.chat,
        ),
      ),
    );
  }
}
