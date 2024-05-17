import 'package:flutter/material.dart';
import 'package:design_sos/src/extensions/text_style_extension.dart';
import 'package:design_sos/src/tokens/token_icon_theme.dart';
import 'package:design_sos/src/utils/color_conversion.dart';
import 'package:design_sos/design_sos.dart';

class TokenBottomNavigationBarTheme extends BottomNavigationBarThemeData with TokenAttributes {
  const TokenBottomNavigationBarTheme({
    super.backgroundColor,
    super.elevation,
    super.selectedIconTheme,
    super.unselectedIconTheme,
    super.selectedItemColor,
    super.unselectedItemColor,
    super.selectedLabelStyle,
    super.unselectedLabelStyle,
    super.showSelectedLabels,
    super.showUnselectedLabels,
    super.enableFeedback,
  });

  factory TokenBottomNavigationBarTheme.fromJson(Map<String, dynamic> json) => TokenBottomNavigationBarTheme(
        backgroundColor: convertColor(json['backgroundColor'] ?? '0xffffffff'),
        elevation: json['elevation'] ?? 8,
        selectedIconTheme: TokenIconTheme.fromJson(json['selectedIconTheme'] ?? {}),
        unselectedIconTheme: TokenIconTheme.fromJson(json['unselectedIconTheme'] ?? {}),
        selectedItemColor: convertColor(json['selectedItemColor'] ?? '0xff6200ee'),
        unselectedItemColor: convertColor(json['unselectedItemColor'] ?? '0xff000000'),
        selectedLabelStyle: const TextStyle().fromJson(json['selectedLabelStyle'] ?? {}),
        unselectedLabelStyle: const TextStyle().fromJson(json['unselectedLabelStyle'] ?? {}),
        showSelectedLabels: json['showSelectedLabels'] ?? true,
        showUnselectedLabels: json['showUnselectedLabels'] ?? true,
        enableFeedback: json['enableFeedback'] ?? true,
      );

  @override
  String get title => 'TokenBottomNavigationBarTheme';

  @override
  Widget toExample(BuildContext context) => BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
      ]);
}
