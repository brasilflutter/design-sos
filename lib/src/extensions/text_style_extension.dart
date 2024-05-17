import 'package:design_sos/src/utils/color_conversion.dart';
import 'package:flutter/material.dart';

extension TextStyleExtension on TextStyle {
  TextStyle? fromJson(Map<String, dynamic>? json) => json != null
      ? TextStyle(
          color: convertColor(json['color'] ?? '') ?? Colors.black,
          fontSize: double.tryParse(json['fontSize'].toString()) ?? 14.0,
          fontWeight: jsonToFontWeight(json['fontWeight']),
          letterSpacing: double.tryParse(json['letterSpacing'].toString()) ?? 0.0,
          wordSpacing: double.tryParse(json['wordSpacing'].toString()) ?? 0.0,
          height: double.tryParse(json['height'].toString()) ?? 0.0,
        )
      : const TextStyle();
}

FontWeight jsonToFontWeight(String? key) => _fontWeightMap[key] ?? FontWeight.normal;

final _fontWeightMap = <String, FontWeight>{
  'bold': FontWeight.bold,
  'normal': FontWeight.normal,
  'w100': FontWeight.w100,
  'w200': FontWeight.w200,
  'w300': FontWeight.w300,
  'w400': FontWeight.w400,
  'w500': FontWeight.w500,
  'w600': FontWeight.w600,
  'w700': FontWeight.w700,
  'w800': FontWeight.w800,
  'w900': FontWeight.w900,
};
