import '../../ui.dart';
import 'app_bar.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

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
          title: 'More',
          icon: icons.more,
        ),
      ),
      body: ListView(
        children: [
          moreCardTile(title: 'Field Trainers', iconData: icons.group),
          moreCardTile(title: 'Social Media', iconData: icons.image),
          moreCardTile(title: 'LeaderBoard', iconData: icons.chart),
          moreCardTile(title: 'Notification', iconData: icons.notification),
          moreCardTile(title: 'Account Setting', iconData: icons.tune),
          moreCardTile(title: 'Billing', iconData: icons.bill),
          moreCardTile(title: 'Activate Bracelet', iconData: icons.activate),
        ],
      ),
    );
  }

  Card moreCardTile({required String title, required IconData iconData}) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(iconData),
          title: AppHeadLine6(title),
        ),
      ),
    );
  }
}
