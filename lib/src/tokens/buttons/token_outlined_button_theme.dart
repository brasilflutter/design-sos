import 'package:design_sos/design_sos.dart';
import 'package:design_sos/src/extensions/edge_insets_exetension.dart';
import 'package:design_sos/src/utils/border_radius_cast.dart';
import 'package:design_sos/src/utils/color_conversion.dart';
import 'package:flutter/material.dart';

class TokenOutlinedButtonTheme extends OutlinedButtonThemeData with TokenAttributes {
  final EdgeInsetsGeometry? padding;
  final BorderRadius borderRadius;
  final double borderWidth;
  final Color foregroundColor;
  final Color disabledColor;
  final Color disabledTextColor;
  final TextStyle? textStyle;

  TokenOutlinedButtonTheme({
    this.padding,
    required this.borderRadius,
    required this.borderWidth,
    required this.foregroundColor,
    required this.disabledColor,
    required this.disabledTextColor,
    this.textStyle,
  }) : super(
            style: ButtonStyle(
          textStyle: WidgetStateProperty.resolveWith<TextStyle>(
            (Set<WidgetState> states) => textStyle ?? const TextStyle(),
          ),
          padding: padding != null ? WidgetStateProperty.resolveWith<EdgeInsetsGeometry>((Set<WidgetState> states) => padding) : null,
          shape: WidgetStateProperty.resolveWith<OutlinedBorder>((Set<WidgetState> states) => RoundedRectangleBorder(
                borderRadius: borderRadius,
              )),
          side: WidgetStateProperty.resolveWith<BorderSide>((states) {
            if (states.contains(WidgetState.disabled)) {
              return BorderSide(width: borderWidth, color: disabledColor);
            }
            return BorderSide(width: borderWidth, color: foregroundColor);
          }),
          foregroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return disabledTextColor;
              }
              return foregroundColor;
            },
          ),
        ));

  factory TokenOutlinedButtonTheme.fromJson(Map<String, dynamic> json, {TextStyle? textStyle}) => TokenOutlinedButtonTheme(
      padding: EdgeInsetsExtension.fromJson(json['padding']),
      borderRadius: borderRadiusFromJson(json['borderRadius']),
      borderWidth: json['borderWidth'],
      foregroundColor: convertColor(json['foregroundColor']) ?? Colors.transparent,
      disabledColor: convertColor(json['disabledColor']) ?? Colors.transparent,
      disabledTextColor: convertColor(json['disabledTextColor']) ?? Colors.transparent,
      textStyle: textStyle);

  @override
  String get title => 'TokenOutlinedButtonTheme';

  @override
  Widget toExample(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(onPressed: () {}, child: const Text('OUTLINED BUTTON')),
    );
  }
}
