import '../../ui.dart';
import 'app_bar.dart';

class LinksPage extends StatelessWidget {
  const LinksPage({Key? key}) : super(key: key);

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
            title: 'Your Links',
            icon: icons.link,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Column(
              children: [
                linkCard(
                  title: 'FIN Link',
                  link: '',
                  icon: IconButton(
                    onPressed: () {},
                    icon: Icon(icons.qr),
                  ),
                ),
                linkCard(title: 'More than a Business Video Link ', link: ''),
                linkCard(title: 'Financial house Video Link ', link: '')
              ],
            ),
          ),
        ));
  }

  Card linkCard({required String title, Widget? icon, required String link}) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BodyText1(title),
            Row(
              children: [
                if (icon != null) icon,
                IconButton(
                    onPressed: () {
                      copyData(link);
                    },
                    icon: Icon(icons.copy))
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> copyData(String value) async {
    await Clipboard.setData(ClipboardData(text: value));
  }
}
