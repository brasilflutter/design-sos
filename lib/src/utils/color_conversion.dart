import 'package:flutter/material.dart';

Color? convertColor(String colorFromBack) {
  try {
    int parsedColor = int.tryParse(colorFromBack) ?? 0xFFFFFF;

    return Color(parsedColor); // Adiciona a opacidade alpha.
  } catch (e) {
    print('Erro ao converter a cor: $e');
  }

  return const Color(0xFF000000).withOpacity(0.4);
}
