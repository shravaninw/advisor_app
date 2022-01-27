import '../../ui.dart';

class AppProgressIndicator extends StatelessWidget {
  const AppProgressIndicator({Key? key, this.alignment}) : super(key: key);

  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: CircularProgressIndicator(
        color: colors.primary,
      ),
    );
  }
}
