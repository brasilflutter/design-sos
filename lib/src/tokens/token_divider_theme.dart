import 'package:design_sos/design_sos.dart';
import 'package:design_sos/src/utils/color_conversion.dart';
import 'package:flutter/material.dart';

class TokenDividerTheme extends DividerThemeData with TokenAttributes {
  const TokenDividerTheme({required super.color, super.space, super.thickness});

  factory TokenDividerTheme.fromJson(Map<String, dynamic> json) => TokenDividerTheme(
        color: convertColor(json['color'] ?? '') ?? Colors.transparent,
        space: json['space'] ?? 16,
        thickness: json['thickness'].toDouble() ?? (2).toDouble(),
      );

  @override
  String get title => 'TokenDividerTheme';

  @override
  Widget toExample(BuildContext context) {
    return const Divider();
  }
}
