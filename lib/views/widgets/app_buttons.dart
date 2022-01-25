import 'package:advisor_app/ui.dart';

class AppPrimaryButton extends StatelessWidget {
  const AppPrimaryButton({Key? key, this.onPressed, required this.child})
      : super(key: key);
  final VoidCallback? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        onPrimary: colors.white,
        primary: colors.primary,
        minimumSize: Size(164, 58),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}

class AppExpandedPrimaryButton extends StatelessWidget {
  const AppExpandedPrimaryButton(
      {Key? key, this.onPressed, required this.child})
      : super(key: key);
  final VoidCallback? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        onPrimary: colors.white,
        primary: colors.primary,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}

class AppSecondaryButton extends StatelessWidget {
  const AppSecondaryButton({Key? key, this.onPressed, required this.child})
      : super(key: key);
  final VoidCallback? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        side: BorderSide(
          color: colors.primary,
        ),
        primary: colors.white,
        onPrimary: colors.primary,
        minimumSize: Size(164, 58),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}

class NextPrimaryButton extends StatelessWidget {
  const NextPrimaryButton({Key? key, this.onPressed}) : super(key: key);
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: colors.black.withOpacity(0.2),
      radius: 49,
      child: InkWell(
        onTap: onPressed,
        child: CircleAvatar(
          radius: 40,
          backgroundColor: colors.primary,
          child: Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}

class NextSecondaryButton extends StatelessWidget {
  const NextSecondaryButton({Key? key, this.onPressed}) : super(key: key);
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: colors.black.withOpacity(0.2),
      radius: 49,
      child: InkWell(
        onTap: onPressed,
        child: CircleAvatar(
          radius: 40,
          backgroundColor: colors.secondary,
          child: Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
