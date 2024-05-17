import 'dart:ui';

import 'package:design_sos/src/extensions/edge_insets_exetension.dart';
import 'package:flutter/material.dart';

class TokenPadding extends ThemeExtension<TokenPadding> {
  final EdgeInsets smallPadding; // 4
  final EdgeInsets mediumPadding; // 8
  final EdgeInsets largePadding; // 24
  final EdgeInsets mainPadding; // 16
  final EdgeInsets cardPadding; // 16

  final double verticalSmallSpacing; // 4
  final double verticalMediumSpacing; // 8
  final double verticalLargeSpacing; // 16
  final double verticalExtraLargeSpacing; // 24
  final double verticalHugeSpacing; // 32

  final double horizontalSmallSpacing; // 4
  final double horizontalMediumSpacing; // 8
  final double horizontalLargeSpacing; // 16
  final double horizontalExtraLargeSpacing; // 24
  final double horizontalHugeSpacing; // 32

  TokenPadding({
    required this.mainPadding,
    required this.cardPadding,
    required this.smallPadding,
    required this.mediumPadding,
    required this.largePadding,
    required this.verticalSmallSpacing,
    required this.verticalMediumSpacing,
    required this.verticalLargeSpacing,
    required this.verticalExtraLargeSpacing,
    required this.verticalHugeSpacing,
    required this.horizontalSmallSpacing,
    required this.horizontalMediumSpacing,
    required this.horizontalLargeSpacing,
    required this.horizontalExtraLargeSpacing,
    required this.horizontalHugeSpacing,
  });

  factory TokenPadding.fromJson(Map<String, dynamic>? json) => TokenPadding(
      mainPadding: EdgeInsetsExtension.fromJson(json?['mainPadding'] ?? const EdgeInsets.all(16)),
      cardPadding: EdgeInsetsExtension.fromJson(json?['cardPadding'] ?? const EdgeInsets.all(16)),
      smallPadding: EdgeInsetsExtension.fromJson(json?['smallPadding'] ?? const EdgeInsets.all(4)),
      mediumPadding: EdgeInsetsExtension.fromJson(json?['mediumPadding'] ?? const EdgeInsets.all(8)),
      largePadding: EdgeInsetsExtension.fromJson(json?['largePadding'] ?? const EdgeInsets.all(24)),
      verticalSmallSpacing: json?['verticalSmallSpacing'].toDouble() ?? 0.toDouble(),
      verticalMediumSpacing: json?['verticalMediumSpacing'].toDouble() ?? 0.toDouble(),
      verticalLargeSpacing: json?['verticalLargeSpacing'].toDouble() ?? 0.toDouble(),
      verticalExtraLargeSpacing: json?['verticalExtraLargeSpacing'].toDouble() ?? 0.toDouble(),
      verticalHugeSpacing: json?['verticalHugeSpacing'].toDouble() ?? 0.toDouble(),
      horizontalSmallSpacing: json?['horizontalSmallSpacing'].toDouble() ?? 0.toDouble(),
      horizontalMediumSpacing: json?['horizontalMediumSpacing'].toDouble() ?? 0.toDouble(),
      horizontalLargeSpacing: json?['horizontalLargeSpacing'].toDouble() ?? 0.toDouble(),
      horizontalExtraLargeSpacing: json?['horizontalExtraLargeSpacing'].toDouble() ?? 0.toDouble(),
      horizontalHugeSpacing: json?['horizontalHugeSpacing'].toDouble() ?? 0.toDouble());

  @override
  ThemeExtension<TokenPadding> copyWith() => TokenPadding(
        mainPadding: mainPadding,
        cardPadding: cardPadding,
        smallPadding: smallPadding,
        mediumPadding: mediumPadding,
        largePadding: largePadding,
        verticalSmallSpacing: verticalSmallSpacing,
        verticalMediumSpacing: verticalMediumSpacing,
        verticalLargeSpacing: verticalLargeSpacing,
        verticalExtraLargeSpacing: verticalExtraLargeSpacing,
        verticalHugeSpacing: verticalHugeSpacing,
        horizontalSmallSpacing: horizontalSmallSpacing,
        horizontalMediumSpacing: horizontalMediumSpacing,
        horizontalLargeSpacing: horizontalLargeSpacing,
        horizontalExtraLargeSpacing: horizontalExtraLargeSpacing,
        horizontalHugeSpacing: horizontalHugeSpacing,
      );

  @override
  ThemeExtension<TokenPadding> lerp(ThemeExtension<TokenPadding>? other, double t) {
    if (other is! TokenPadding) {
      return this;
    }

    return TokenPadding(
      mainPadding: EdgeInsets.lerp(mainPadding, other.mainPadding, t) ?? mainPadding,
      cardPadding: EdgeInsets.lerp(cardPadding, other.cardPadding, t) ?? cardPadding,
      smallPadding: EdgeInsets.lerp(smallPadding, other.smallPadding, t) ?? smallPadding,
      mediumPadding: EdgeInsets.lerp(mediumPadding, other.mediumPadding, t) ?? mediumPadding,
      largePadding: EdgeInsets.lerp(largePadding, other.largePadding, t) ?? largePadding,
      verticalSmallSpacing: lerpDouble(verticalSmallSpacing, other.verticalSmallSpacing, t) ?? verticalSmallSpacing,
      verticalMediumSpacing: lerpDouble(verticalMediumSpacing, other.verticalMediumSpacing, t) ?? verticalMediumSpacing,
      verticalLargeSpacing: lerpDouble(verticalLargeSpacing, other.verticalLargeSpacing, t) ?? verticalLargeSpacing,
      verticalExtraLargeSpacing: lerpDouble(verticalExtraLargeSpacing, other.verticalExtraLargeSpacing, t) ?? verticalExtraLargeSpacing,
      verticalHugeSpacing: lerpDouble(verticalHugeSpacing, other.verticalHugeSpacing, t) ?? verticalHugeSpacing,
      horizontalMediumSpacing: lerpDouble(horizontalMediumSpacing, other.horizontalMediumSpacing, t) ?? horizontalMediumSpacing,
      horizontalSmallSpacing: lerpDouble(horizontalSmallSpacing, other.horizontalSmallSpacing, t) ?? horizontalSmallSpacing,
      horizontalLargeSpacing: lerpDouble(horizontalLargeSpacing, other.horizontalLargeSpacing, t) ?? horizontalLargeSpacing,
      horizontalHugeSpacing: lerpDouble(horizontalHugeSpacing, other.horizontalHugeSpacing, t) ?? horizontalHugeSpacing,
      horizontalExtraLargeSpacing: lerpDouble(horizontalExtraLargeSpacing, other.horizontalExtraLargeSpacing, t) ?? horizontalExtraLargeSpacing,
    );
  }
}
