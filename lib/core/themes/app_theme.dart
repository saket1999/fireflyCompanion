import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static Color lightBackgroundColor = const Color(0xfff2f2f2);
  static Color lightPrimaryColor = const Color(0xfff2f2f2);
  static Color lightAccentColor = Colors.blueGrey.shade200;
  static Color lightParticlesColor = const Color(0x44948282);

  static Color darkBackgroundColor = const Color(0xff1a2127);
  static Color darkPrimaryColor = const Color(0xff1a2127);
  static Color darkAccentColor = Colors.blueGrey.shade600;
  static Color darkParticlesColor = const Color(0x441c2a3d);

  const AppTheme._();

  static final lightTheme = ThemeData(
    // brightness: Brightness.light,
    primaryColor: lightPrimaryColor,
    backgroundColor: lightBackgroundColor,
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: lightAccentColor, brightness: Brightness.light),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final darkTheme = ThemeData(
    // brightness: Brightness.dark,
    primaryColor: darkPrimaryColor,
    backgroundColor: darkBackgroundColor,
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: darkAccentColor, brightness: Brightness.dark),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static setStatusBarAndNavigationBarColor(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:
          themeMode == ThemeMode.dark ? Brightness.light : Brightness.dark,
      systemNavigationBarColor: themeMode == ThemeMode.dark
          ? darkBackgroundColor
          : lightBackgroundColor,
      systemNavigationBarIconBrightness:
          themeMode == ThemeMode.dark ? Brightness.light : Brightness.dark,
    ));
  }
}
