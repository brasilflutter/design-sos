import 'package:design_sos/design_sos.dart';
import 'package:flutter/material.dart';

import '../themes/default_theme.dart';

abstract class ThemeManager {
  static ThemeData createThemeData({required ITheme theme, String? fontFamily}) {
    final definedTheme = ThemeData(
      useMaterial3: true,
      extensions: {
        theme.tokenPadding,
      },
      colorScheme: theme.tokenColors,
      textTheme: theme.tokenTextTheme,
      elevatedButtonTheme: theme.tokenButtonsTheme.tokenElevatedButtonTheme,
      outlinedButtonTheme: theme.tokenButtonsTheme.tokenOutlinedButtonTheme,
      textButtonTheme: theme.tokenButtonsTheme.tokenTextButtonTheme,
      cardTheme: theme.tokenCardTheme,
      cardColor: theme.tokenCardTheme.color,
      appBarTheme: theme.tokenAppBarTheme,
      dialogBackgroundColor: theme.tokenDialogTheme.backgroundColor,
      dialogTheme: theme.tokenDialogTheme,
      bottomSheetTheme: theme.tokenBottomSheetTheme,
      drawerTheme: theme.tokenDrawerTheme,
      dividerTheme: theme.tokenDividerTheme,
      inputDecorationTheme: theme.tokenInputDecorationTheme,
      bottomNavigationBarTheme: theme.tokenBottomNavigationBarTheme,
      iconTheme: theme.tokenIconTheme,
      scaffoldBackgroundColor: theme.tokenColors.background,
      fontFamily: fontFamily,
    );
    return definedTheme;
  }

  static ThemeData createDefaultThemeData() {
    final defaultTheme = DefaultTheme();

    return ThemeData(
      useMaterial3: true,
      extensions: {
        defaultTheme.tokenPadding,
      },
      colorScheme: defaultTheme.tokenColors,
      textTheme: defaultTheme.tokenTextTheme,
      elevatedButtonTheme: defaultTheme.tokenButtonsTheme.tokenElevatedButtonTheme,
      outlinedButtonTheme: defaultTheme.tokenButtonsTheme.tokenOutlinedButtonTheme,
      textButtonTheme: defaultTheme.tokenButtonsTheme.tokenTextButtonTheme,
      cardTheme: defaultTheme.tokenCardTheme,
      cardColor: defaultTheme.tokenCardTheme.color,
      appBarTheme: defaultTheme.tokenAppBarTheme,
      dialogBackgroundColor: defaultTheme.tokenDialogTheme.backgroundColor,
      dialogTheme: defaultTheme.tokenDialogTheme,
      bottomSheetTheme: defaultTheme.tokenBottomSheetTheme,
      drawerTheme: defaultTheme.tokenDrawerTheme,
      dividerTheme: defaultTheme.tokenDividerTheme,
      inputDecorationTheme: defaultTheme.tokenInputDecorationTheme,
      bottomNavigationBarTheme: defaultTheme.tokenBottomNavigationBarTheme,
      iconTheme: defaultTheme.tokenIconTheme,
      scaffoldBackgroundColor: defaultTheme.tokenColors.background,
      fontFamily: 'Europa',
    );
  }
}
