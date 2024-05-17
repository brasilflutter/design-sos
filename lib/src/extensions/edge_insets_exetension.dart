import 'package:flutter/material.dart';

extension EdgeInsetsExtension on EdgeInsets {
  static EdgeInsets fromJson(Map<String, dynamic>? json) => EdgeInsets.only(
      top: (json?['top'] ?? 0).toDouble(),
      bottom: (json?['bottom'] ?? 0).toDouble(),
      left: (json?['left'] ?? 0).toDouble(),
      right: (json?['right'] ?? 0).toDouble());
}
