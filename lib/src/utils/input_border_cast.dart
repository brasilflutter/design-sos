import 'package:design_sos/src/utils/border_radius_cast.dart';
import 'package:design_sos/src/utils/color_conversion.dart';
import 'package:flutter/material.dart';

InputBorder inputBorderFromJson(Map<String, dynamic>? json) {
  final color = convertColor(json?['color']) ?? Colors.white;
  final borderRadius = borderRadiusFromJson(json?['borderRadius']);
  final width = json?['width'];
  final inputDecorationMap = <String, InputBorder>{
    'underline': UnderlineInputBorder(borderSide: BorderSide(color: color, width: width), borderRadius: borderRadius),
    'outlined': OutlineInputBorder(borderSide: BorderSide(color: color, width: width), borderRadius: borderRadius),
    'none': const UnderlineInputBorder(borderSide: BorderSide.none)
  };
  final border = inputDecorationMap[json?['borderType']];
  return border ?? const UnderlineInputBorder();
}
