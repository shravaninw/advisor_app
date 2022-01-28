import '../../ui.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: colors.primary.withOpacity(0.2),
            ),
            child: Icon(
              icon,
              color: colors.primary,
            ),
          ),
        ),
        AppHeadLine5(title),
      ],
    );
  }
}
