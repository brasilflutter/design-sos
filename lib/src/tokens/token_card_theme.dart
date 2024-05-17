import 'package:flutter/material.dart';
import 'package:design_sos/src/extensions/edge_insets_exetension.dart';
import 'package:design_sos/src/utils/border_radius_cast.dart';
import 'package:design_sos/src/utils/color_conversion.dart';
import 'package:design_sos/design_sos.dart';

class TokenCardTheme extends CardTheme with TokenAttributes {
  TokenCardTheme(
      {required Color super.color,
      required Color super.shadowColor,
      super.surfaceTintColor,
      required double super.elevation,
      required EdgeInsetsGeometry super.margin,
      required BorderRadius borderRadius})
      : super(shape: RoundedRectangleBorder(borderRadius: borderRadius));

  factory TokenCardTheme.fromJson(Map<String, dynamic> json) => TokenCardTheme(
      color: convertColor(json['color'] ?? '') ?? Colors.white,
      shadowColor: convertColor(json['shadowColor'] ?? '') ?? Colors.white,
      surfaceTintColor: convertColor(json['surfaceTintColor'] ?? '') ?? Colors.white,
      elevation: json['elevation'],
      margin: EdgeInsetsExtension.fromJson(json['margin'] ?? ''),
      borderRadius: borderRadiusFromJson(json['borderRadius'] ?? ''));

  @override
  String get title => 'TokenCardTheme';

  @override
  Widget toExample(BuildContext context) {
    return const Column(
      children: [
        Card(
          child: Padding(
            padding: EdgeInsets.all(50),
            child: Text('Example'),
          ),
        ),
      ],
    );
  }
}
