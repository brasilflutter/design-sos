import 'package:design_sos/design_sos.dart';
import 'package:design_sos/src/extensions/edge_insets_exetension.dart';
import 'package:design_sos/src/utils/border_radius_cast.dart';
import 'package:design_sos/src/utils/color_conversion.dart';
import 'package:flutter/material.dart';

class TokenElevatedButtonTheme extends ElevatedButtonThemeData with TokenAttributes {
  final Color backgroundColor;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final BorderRadius borderRadius;
  final Color foregroundColor;
  final Color disabledColor;
  final Color disabledTextColor;
  final double elevation;
  final Color overlayColor;

  TokenElevatedButtonTheme(
      {required this.backgroundColor,
      this.textStyle,
      this.padding,
      required this.borderRadius,
      required this.foregroundColor,
      required this.disabledColor,
      required this.disabledTextColor,
      required this.elevation,
      required this.overlayColor})
      : super(
            style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return disabledColor;
              }
              return backgroundColor;
            },
          ),
          textStyle: WidgetStateProperty.resolveWith<TextStyle>(
            (Set<WidgetState> states) => textStyle ?? const TextStyle(),
          ),
          overlayColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.pressed)) {
                return overlayColor;
              }
              return Colors.transparent;
            },
          ),
          elevation: WidgetStateProperty.resolveWith<double>((Set<WidgetState> states) => elevation),
          padding: padding != null ? WidgetStateProperty.resolveWith<EdgeInsetsGeometry>((Set<WidgetState> states) => padding) : null,
          shape: WidgetStateProperty.resolveWith<OutlinedBorder>((Set<WidgetState> states) => RoundedRectangleBorder(
                borderRadius: borderRadius,
              )),
          foregroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return disabledTextColor;
              }
              return foregroundColor;
            },
          ),
        ));

  factory TokenElevatedButtonTheme.fromJson(Map<String, dynamic> json, {TextStyle? textStyle}) => TokenElevatedButtonTheme(
        textStyle: textStyle,
        backgroundColor: convertColor(json['backgroundColor']) ?? Colors.transparent,
        padding: EdgeInsetsExtension.fromJson(json['padding']),
        borderRadius: borderRadiusFromJson(json['borderRadius']),
        foregroundColor: convertColor(json['foregroundColor']) ?? Colors.transparent,
        disabledColor: convertColor(json['disabledColor']) ?? Colors.transparent,
        disabledTextColor: convertColor(json['disabledTextColor']) ?? Colors.transparent,
        elevation: json['elevation'],
        overlayColor: convertColor(json['overlayColor']) ?? Colors.transparent,
      );

  @override
  String get title => 'TokenElevatedButtonTheme';

  @override
  Widget toExample(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(onPressed: () {}, child: const Text('ELEVATED BUTTON')),
    );
  }
}
