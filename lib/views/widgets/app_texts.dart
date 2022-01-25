import '../../ui.dart';

class AppTitle extends StatelessWidget {
  const AppTitle(
    this.text,
    this.style, {
    Key? key,
  }) : super(key: key);
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.headline5!.copyWith(
        fontWeight: FontWeight.w600,
        color: context.textTheme.headline6!.color,
      ),
    );
  }
}

class AppSubTitle extends StatelessWidget {
  const AppSubTitle(
    this.text,
    this.style, {
    Key? key,
  }) : super(key: key);
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.subtitle1!.copyWith(
        fontWeight: FontWeight.w600,
        color: style?.color ?? context.textTheme.headline6!.color,
      ),
    );
  }
}

class AppHeadLine1 extends StatelessWidget {
  const AppHeadLine1(
    this.text, {
    Key? key,
    this.style,
    this.textAlign,
  }) : super(key: key);
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: context.textTheme.headline1,
    );
  }
}

class AppHeadLine2 extends StatelessWidget {
  const AppHeadLine2(
    this.text, {
    Key? key,
    this.style,
    this.textAlign,
  }) : super(key: key);
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.headline2,
      textAlign: textAlign,
    );
  }
}

class AppHeadLine3 extends StatelessWidget {
  const AppHeadLine3(
    this.text, {
    Key? key,
    this.style,
    this.textAlign,
  }) : super(key: key);
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.headline3,
      textAlign: textAlign,
    );
  }
}

class AppHeadLine4 extends StatelessWidget {
  const AppHeadLine4(
    this.text, {
    Key? key,
    this.textAlign,
  }) : super(key: key);
  final String text;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.headline4,
      textAlign: textAlign,
    );
  }
}

class AppHeadLine5 extends StatelessWidget {
  const AppHeadLine5(
    this.text, {
    Key? key,
    this.textAlign,
  }) : super(key: key);
  final String text;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: context.textTheme.headline5!,
    );
  }
}

class AppHeadLine6 extends StatelessWidget {
  const AppHeadLine6(
    this.text, {
    Key? key,
    this.textAlign,
  }) : super(key: key);
  final String text;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: context.textTheme.headline6,
    );
  }
}

class BodyText1 extends StatelessWidget {
  const BodyText1(
    this.text, {
    Key? key,
    this.textAlign,
  }) : super(key: key);
  final String text;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: context.textTheme.bodyText1,
    );
  }
}

class BodyText2 extends StatelessWidget {
  const BodyText2(
    this.text, {
    Key? key,
    this.textAlign,
  }) : super(key: key);
  final String text;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: context.textTheme.bodyText2,
    );
  }
}

class AppButtonText extends StatelessWidget {
  const AppButtonText(
    this.text, {
    Key? key,
    this.textAlign,
  }) : super(key: key);
  final String text;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: context.textTheme.button,
    );
  }
}

class AppCaptionText extends StatelessWidget {
  const AppCaptionText(
    this.text, {
    Key? key,
    this.textAlign,
  }) : super(key: key);
  final String text;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: context.textTheme.caption,
    );
  }
}

class AppOverLine extends StatelessWidget {
  const AppOverLine(
    this.text, {
    Key? key,
    this.textAlign,
  }) : super(key: key);
  final String text;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: context.textTheme.overline,
    );
  }
}

class AppSubtitle1 extends StatelessWidget {
  const AppSubtitle1(
    this.text, {
    Key? key,
    this.textAlign,
  }) : super(key: key);
  final String text;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: context.textTheme.subtitle1,
    );
  }
}

class AppSubtitle2 extends StatelessWidget {
  const AppSubtitle2(
    this.text, {
    Key? key,
    this.textAlign,
  }) : super(key: key);
  final String text;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: context.textTheme.subtitle2!.copyWith(color: Colors.white),
    );
  }
}

class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    Key? key,
    this.style,
    this.textAlign,
  }) : super(key: key);
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: textAlign,
    );
  }
}

class ErrorText extends StatelessWidget {
  const ErrorText(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: colors.red),
    );
  }
}
