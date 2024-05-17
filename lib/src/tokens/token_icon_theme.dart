import 'package:flutter/material.dart';
import 'package:design_sos/src/utils/color_conversion.dart';
import 'package:design_sos/design_sos.dart';

class TokenIconTheme extends IconThemeData with TokenAttributes {
  const TokenIconTheme({Color? color, double opacity = 1, double size = 22}) : super();

  factory TokenIconTheme.fromJson(Map<String, dynamic> json) => TokenIconTheme(
        color: convertColor(json['color'] ?? ''),
        opacity: json['opacity'] ?? 1,
        size: json['size'] ?? 22,
      );

  @override
  String get title => 'TokenIconTheme';

  @override
  Widget toExample(BuildContext context) {
    return const Icon(Icons.home);
  }
}
