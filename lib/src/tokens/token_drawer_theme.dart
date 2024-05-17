import 'package:flutter/material.dart';
import 'package:design_sos/src/utils/border_radius_cast.dart';
import 'package:design_sos/src/utils/color_conversion.dart';
import 'package:design_sos/design_sos.dart';

class TokenDrawerTheme extends DrawerThemeData with TokenAttributes {
  TokenDrawerTheme({required Color super.backgroundColor, super.scrimColor, super.elevation, super.width, BorderRadius? borderRadius})
      : super(shape: RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.zero));

  factory TokenDrawerTheme.fromJson(Map<String, dynamic> json) => TokenDrawerTheme(
      backgroundColor: convertColor(json['backgroundColor'] ?? '') ?? Colors.white,
      scrimColor: convertColor(json['scrimColor'] ?? ''),
      elevation: json['elevation'] ?? 16,
      width: json['width'] != 0 ? json['width'] : null,
      borderRadius: borderRadiusFromJson(json['borderRadius'] ?? {}));

  @override
  String get title => 'TokenDrawerTheme';

  @override
  Widget toExample(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
      label: const Text('ABRIR DRAWER'),
      icon: const Icon(Icons.menu),
    );
  }
}
