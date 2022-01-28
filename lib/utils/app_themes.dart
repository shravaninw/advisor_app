import '../ui.dart';

abstract class AppTheme {
  static final AppColors _colors = 0.colors;
  ThemeData lightTheme = ThemeData(
    cardColor: _colors.cardColor,
    scaffoldBackgroundColor: _colors.bgColor,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: _colors.black,
      ),
    ),
    brightness: Brightness.light,
    primaryColor: _colors.primary,
    textTheme: TextTheme(),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      onPrimary: _colors.white,
      primary: _colors.primary,
      minimumSize: Size(164, 58),
    )),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(_colors.black))),
    buttonTheme: ButtonThemeData(
      buttonColor: _colors.primary,
    ),
    inputDecorationTheme: InputDecorationTheme(
        border: InputBorder.none,
        errorStyle: TextStyle(color: _colors.red),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: _colors.primary),
        ),
        hintStyle: TextStyle(fontSize: 24, color: _colors.hintTextColor),
        fillColor: _colors.textFieldBg),
  );
  ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: _colors.primary,
    textTheme: TextTheme(),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(_colors.white))),
    buttonTheme: ButtonThemeData(
      buttonColor: _colors.primary,
    ),
    inputDecorationTheme: InputDecorationTheme(
        border: InputBorder.none,
        errorStyle: TextStyle(color: _colors.red),
        focusedBorder: OutlineInputBorder(
          gapPadding: 8,
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: _colors.primary,
          ),
        ),
        hintStyle: TextStyle(color: _colors.hintTextColor, fontSize: 40),
        fillColor: Colors.transparent),
  );
}
