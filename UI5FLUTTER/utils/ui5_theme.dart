part of ui5_flutter;

class UI5Theme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: UI5Colors.primary,
    accentColor: UI5Colors.secondary,
    buttonColor: UI5Colors.primary,
    scaffoldBackgroundColor: UI5Colors.background,
    textTheme: TextTheme(
      headline6: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: UI5Colors.neutral,
      ),
      bodyText2: TextStyle(
        fontSize: 16,
        color: UI5Colors.neutral,
      ),
      button: TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(UI5Colors.primary),
        textStyle: MaterialStateProperty.all(TextStyle(
          fontSize: 16,
          color: Colors.white,
        )),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 12, horizontal: 24)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        side: MaterialStateProperty.all(BorderSide(color: UI5Colors.primary)),
        textStyle: MaterialStateProperty.all(TextStyle(
          fontSize: 16,
          color: UI5Colors.primary,
        )),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 12, horizontal: 24)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(UI5Colors.primary),
        textStyle: MaterialStateProperty.all(TextStyle(
          fontSize: 16,
          color: UI5Colors.primary,
        )),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 12, horizontal: 24)),
      ),
    ),
    cardTheme: CardTheme(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );

  // You can also define a dark theme if needed
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    // Customize the dark theme colors and typography here
    // Example:
    // primaryColor: UI5Colors.primaryDark,
    // accentColor: UI5Colors.secondaryDark,
    // scaffoldBackgroundColor: UI5Colors.backgroundDark,
    // textTheme: TextTheme(...),
    // elevatedButtonTheme: ElevatedButtonThemeData(...),
    // outlinedButtonTheme: OutlinedButtonThemeData(...),
    // textButtonTheme: TextButtonThemeData(...),
    // cardTheme: CardTheme(...),
  );
}
