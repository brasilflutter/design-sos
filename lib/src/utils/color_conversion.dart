import 'package:flutter/material.dart';

Color convertColor(String? colorFromBack) {
  if (colorFromBack == null) return const Color(0xFF000000);
  try {
    int parsedColor = int.tryParse(colorFromBack) ?? 0xFFFFFF;
    return Color(parsedColor);
  } catch (e) {
    print('Erro ao converter a cor: $e');
  }

  return const Color(0xFF000000);
}
