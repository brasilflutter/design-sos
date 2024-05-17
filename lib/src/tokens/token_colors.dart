import 'package:design_sos/src/interfaces/token_atributes.dart';
import 'package:design_sos/src/tokens/token_padding.dart';
import 'package:design_sos/src/utils/color_conversion.dart';
import 'package:flutter/material.dart';

class TokenColors extends ColorScheme with TokenAttributes {
  TokenColors({
    required super.brightness,
    required super.primary,
    required super.onPrimary,
    required Color super.primaryContainer,
    required Color super.onPrimaryContainer,
    required super.secondary,
    required super.onSecondary,
    required Color super.secondaryContainer,
    required Color super.onSecondaryContainer,
    required Color super.tertiary,
    required Color super.onTertiary,
    required Color super.tertiaryContainer,
    required Color super.onTertiaryContainer,
    required super.error,
    required super.onError,
    required Color super.errorContainer,
    required Color super.onErrorContainer,
    required super.background,
    required super.onBackground,
    required super.surface,
    required super.onSurface,
    required Color super.surfaceVariant,
    required Color super.onSurfaceVariant,
    required Color super.outline,
    required Color super.outlineVariant,
    required Color super.shadow,
    required Color super.scrim,
    required Color super.inverseSurface,
    required Color super.onInverseSurface,
    required Color super.inversePrimary,
    required Color super.surfaceTint,
  });

  factory TokenColors.fromJson(Map<String, dynamic>? json) {
    return TokenColors(
      brightness: json?['brightness'] == 'light' ? Brightness.light : Brightness.dark,
      primary: convertColor(json?['primary'] ?? '0xff000000') ?? Colors.white,
      onPrimary: convertColor(json?['onPrimary'] ?? '0xff000000') ?? Colors.white,
      primaryContainer: convertColor(json?['primaryContainer'] ?? '0xff000000') ?? Colors.white,
      onPrimaryContainer: convertColor(json?['onPrimaryContainer'] ?? '0xff000000') ?? Colors.white,
      secondary: convertColor(json?['secondary'] ?? '0xff000000') ?? Colors.white,
      onSecondary: convertColor(json?['onSecondary'] ?? '0xff000000') ?? Colors.white,
      secondaryContainer: convertColor(json?['secondaryContainer'] ?? '0xff000000') ?? Colors.white,
      onSecondaryContainer: convertColor(json?['onSecondaryContainer'] ?? '0xff000000') ?? Colors.white,
      tertiary: convertColor(json?['tertiary'] ?? '0xff000000') ?? Colors.white,
      onTertiary: convertColor(json?['onTertiary'] ?? '0xff000000') ?? Colors.white,
      tertiaryContainer: convertColor(json?['tertiaryContainer'] ?? '0xff000000') ?? Colors.white,
      onTertiaryContainer: convertColor(json?['onTertiaryContainer'] ?? '0xff000000') ?? Colors.white,
      error: convertColor(json?['error'] ?? '0xff000000') ?? Colors.white,
      onError: convertColor(json?['onError'] ?? '0xff000000') ?? Colors.white,
      errorContainer: convertColor(json?['errorContainer'] ?? '0xff000000') ?? Colors.white,
      onErrorContainer: convertColor(json?['onErrorContainer'] ?? '0xff000000') ?? Colors.white,
      background: convertColor(json?['background'] ?? '0xff000000') ?? Colors.white,
      onBackground: convertColor(json?['onBackground'] ?? '0xff000000') ?? Colors.white,
      surface: convertColor(json?['surface'] ?? '0xff000000') ?? Colors.white,
      onSurface: convertColor(json?['onSurface'] ?? '0xff000000') ?? Colors.white,
      surfaceVariant: convertColor(json?['surfaceVariant'] ?? '0xff000000') ?? Colors.white,
      onSurfaceVariant: convertColor(json?['onSurfaceVariant'] ?? '0xff000000') ?? Colors.white,
      outline: convertColor(json?['outline'] ?? '0xff000000') ?? Colors.white,
      outlineVariant: convertColor(json?['outlineVariant'] ?? '0xff000000') ?? Colors.white,
      shadow: convertColor(json?['shadow'] ?? '0xff000000') ?? Colors.white,
      scrim: convertColor(json?['scrim'] ?? '0xff000000') ?? Colors.white,
      inverseSurface: convertColor(json?['inverseSurface'] ?? '0xff000000') ?? Colors.white,
      onInverseSurface: convertColor(json?['onInverseSurface'] ?? '0xff000000') ?? Colors.white,
      inversePrimary: convertColor(json?['inversePrimary'] ?? '0xff000000') ?? Colors.white,
      surfaceTint: convertColor(json?['surfaceTint'] ?? '0xff000000') ?? Colors.white,
    );
  }

  @override
  String get title => 'tokenColors';

  @override
  Widget toExample(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      children: [
        _ColorExample(colorName: 'primary', color: primary),
        _ColorExample(colorName: 'onPrimary', color: onPrimary),
        _ColorExample(colorName: 'primaryContainer', color: primaryContainer),
        _ColorExample(colorName: 'onPrimaryContainer', color: onPrimaryContainer),
        _ColorExample(colorName: 'secondary', color: secondary),
        _ColorExample(colorName: 'onSecondary', color: onSecondary),
        _ColorExample(colorName: 'secondaryContainer', color: secondaryContainer),
        _ColorExample(colorName: 'onSecondaryContainer', color: onSecondaryContainer),
        _ColorExample(colorName: 'tertiary', color: tertiary),
        _ColorExample(colorName: 'onTertiary', color: onTertiary),
        _ColorExample(colorName: 'tertiaryContainer', color: tertiaryContainer),
        _ColorExample(colorName: 'onTertiaryContainer', color: onTertiaryContainer),
        _ColorExample(colorName: 'error', color: error),
        _ColorExample(colorName: 'onError', color: onError),
        _ColorExample(colorName: 'errorContainer', color: errorContainer),
        _ColorExample(colorName: 'onErrorContainer', color: onErrorContainer),
        _ColorExample(colorName: 'background', color: surface),
        _ColorExample(colorName: 'onBackground', color: onSurface),
        _ColorExample(colorName: 'surface', color: surface),
        _ColorExample(colorName: 'onSurface', color: onSurface),
        _ColorExample(colorName: 'surfaceVariant', color: surfaceContainerHighest),
        _ColorExample(colorName: 'onSurfaceVariant', color: onSurfaceVariant),
        _ColorExample(colorName: 'outline', color: outline),
        _ColorExample(colorName: 'outlineVariant', color: outlineVariant),
        _ColorExample(colorName: 'shadow', color: shadow),
        _ColorExample(colorName: 'scrim', color: scrim),
        _ColorExample(colorName: 'inverseSurface', color: inverseSurface),
        _ColorExample(colorName: 'onInverseSurface', color: onInverseSurface),
        _ColorExample(colorName: 'inversePrimary', color: inversePrimary),
        _ColorExample(colorName: 'surfaceTint', color: surfaceTint),
      ],
    );
  }
}

class _ColorExample extends StatelessWidget {
  final String colorName;
  final Color color;
  const _ColorExample({required this.colorName, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      color: color,
      padding: Theme.of(context).extension<TokenPadding>()?.mainPadding ?? const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: Theme.of(context).extension<TokenPadding>()?.mediumPadding ?? const EdgeInsets.all(16),
            color: Colors.black87,
            child: Text(
              colorName,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
