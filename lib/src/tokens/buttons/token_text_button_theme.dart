import 'package:design_sos/src/extensions/text_style_extension.dart';
import 'package:design_sos/src/interfaces/interfaces.dart';
import 'package:design_sos/src/utils/color_conversion.dart';
import 'package:flutter/material.dart';

class TokenTextButtonTheme extends TextButtonThemeData with TokenAttributes {
  final Color disabledTextColor;
  final double fontSize;
  final Color textColor;
  final FontWeight fontWeight;

  TokenTextButtonTheme({required this.disabledTextColor, required this.fontSize, required this.textColor, required this.fontWeight})
      : super(
            style: ButtonStyle(
          textStyle: WidgetStateProperty.resolveWith<TextStyle>(
            (Set<WidgetState> states) => TextStyle(color: textColor, fontSize: fontSize, fontWeight: fontWeight),
          ),
          foregroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return disabledTextColor;
              }
              return textColor;
            },
          ),
        ));

  factory TokenTextButtonTheme.fromJson(Map<String, dynamic> json) => TokenTextButtonTheme(
        disabledTextColor: convertColor(json['disabledTextColor']) ?? Colors.transparent,
        fontSize: json['fontSize'],
        textColor: convertColor(json['textColor']) ?? Colors.transparent,
        fontWeight: jsonToFontWeight(json['fontWeight']),
      );

  @override
  String get title => 'TokenTextButtonTheme';

  @override
  Widget toExample(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(onPressed: () {}, child: const Text('TEXT BUTTON')),
    );
  }
}
