import 'package:design_sos/design_sos.dart';
import 'package:design_sos/src/utils/border_radius_cast.dart';
import 'package:design_sos/src/utils/color_conversion.dart';
import 'package:flutter/material.dart';

class TokenAppBarTheme extends AppBarTheme with TokenAttributes {
  final BorderRadius? borderRadius;

  TokenAppBarTheme({
    required Color super.backgroundColor,
    super.foregroundColor,
    super.elevation,
    super.shadowColor,
    super.surfaceTintColor,
    this.borderRadius,
    bool super.centerTitle = false,
    super.titleSpacing,
    super.toolbarHeight,
  }) : super(shape: RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.zero));

  factory TokenAppBarTheme.fromJson(Map<String, dynamic>? json) => TokenAppBarTheme(
        centerTitle: json?['centerTitle'] ?? false,
        backgroundColor: convertColor(json?['backgroundColor'] ?? '') ?? Colors.blue,
        foregroundColor: convertColor(json?['foregroundColor'] ?? '') ?? Colors.white,
        elevation: json?['elevation'].toDouble() ?? (4).toDouble(),
        shadowColor: convertColor(json?['shadowColor'] ?? ''),
        surfaceTintColor: convertColor(json?['surfaceTintColor'] ?? ''),
        borderRadius: borderRadiusFromJson(json?['borderRadius'] ?? {}) ?? BorderRadius.zero,
        titleSpacing: json?['titleSpacing'] != 0 ? json!['titleSpacing'] : null,
        toolbarHeight: json?['toolbarHeight'] != 0 ? json!['toolbarHeight'] : null,
      );

  @override
  String get title => 'TokenAppBarTheme';

  @override
  Widget toExample(BuildContext context) => SizedBox(
        height: kToolbarHeight,
        child: AppBar(
          title: const Text('Tech  Example'),
        ),
      );
}
