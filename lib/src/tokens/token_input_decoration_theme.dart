import 'package:design_sos/design_sos.dart';
import 'package:design_sos/src/extensions/edge_insets_exetension.dart';
import 'package:design_sos/src/extensions/text_style_extension.dart';
import 'package:design_sos/src/utils/color_conversion.dart';
import 'package:flutter/material.dart';

import '../utils/input_border_cast.dart';

class TokenInputDecorationTheme extends InputDecorationTheme with TokenAttributes {
  const TokenInputDecorationTheme({
    super.labelStyle,
    super.floatingLabelStyle,
    super.helperStyle,
    int? helperMaxLines,
    super.hintStyle,
    super.errorStyle,
    super.errorMaxLines,
    super.isDense,
    super.isCollapsed,
    super.iconColor,
    super.prefixStyle,
    super.prefixIconColor,
    super.suffixStyle,
    super.suffixIconColor,
    super.filled,
    super.fillColor,
    super.focusColor,
    super.hoverColor,
    super.border,
    super.enabledBorder,
    super.disabledBorder,
    super.focusedErrorBorder,
    super.focusedBorder,
    super.errorBorder,
    super.contentPadding,
  });

  factory TokenInputDecorationTheme.fromJson(
    Map<String, dynamic> json,
  ) =>
      TokenInputDecorationTheme(
          labelStyle: const TextStyle().fromJson(json['labelStyle']),
          floatingLabelStyle: const TextStyle().fromJson(json['floatingLabelStyle']),
          helperStyle: const TextStyle().fromJson(json['helperStyle']),
          hintStyle: const TextStyle().fromJson(json['hintStyle']),
          errorStyle: const TextStyle().fromJson(json['errorStyle']),
          prefixStyle: const TextStyle().fromJson(json['prefixStyle']),
          suffixStyle: const TextStyle().fromJson(json['suffixStyle']),
          contentPadding: EdgeInsetsExtension.fromJson(json['contentPadding']) ?? const EdgeInsets.all(0),
          helperMaxLines: json['helperMaxLines'].toInt(),
          errorMaxLines: json['errorMaxLines'].toInt(),
          isDense: json['isDense'] ?? false,
          isCollapsed: json['isCollapsed'] ?? false,
          iconColor: convertColor(json['iconColor']) ?? Colors.white,
          prefixIconColor: convertColor(json['prefixIconColor']) ?? Colors.white,
          suffixIconColor: convertColor(json['suffixIconColor']) ?? Colors.white,
          fillColor: WidgetStateColor.resolveWith((states) {
            if (states.contains(WidgetState.focused)) {
              return convertColor(json['fillColor']) ?? Colors.white;
            }
            if (states.contains(WidgetState.error)) {
              return convertColor(json['disabledFillColor'] ?? 232332) ?? Colors.white;
            }
            return convertColor(json['fillColor']) ?? Colors.white;
          }),
          filled: json['filled'] ?? false,
          focusColor: convertColor(json['focusColor']) ?? Colors.white,
          hoverColor: convertColor(json['hoverColor']) ?? Colors.white,
          border: inputBorderFromJson(json['border']),
          focusedBorder: inputBorderFromJson(json['focusedBorder']),
          enabledBorder: inputBorderFromJson(json['enabledBorder']),
          disabledBorder: inputBorderFromJson(json['disabledBorder']),
          focusedErrorBorder: inputBorderFromJson(json['focusedErrorBorder']),
          errorBorder: inputBorderFromJson(json['errorBorder']));

  @override
  String get title => 'tokenInputDecorationTheme';

  @override
  Widget toExample(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: Theme.of(context).extension<TokenPadding>()?.mainPadding ?? const EdgeInsets.all(16),
          child: const SizedBox(
            width: 300,
            height: 60,
            child: TextField(
              decoration: InputDecoration(
                helperText: 'Texto helper',
                hintText: 'Digite texto...',
                icon: Icon(Icons.person),
              ),
            ),
          ),
        ),
        Padding(
          padding: Theme.of(context).extension<TokenPadding>()?.mainPadding ?? const EdgeInsets.all(16),
          child: const SizedBox(
            width: 300,
            height: 60,
            child: TextField(
              decoration: InputDecoration(
                helperText: 'Texto helper',
                hintText: 'Digite texto...',
                prefixIcon: Icon(Icons.person),
              ),
            ),
          ),
        ),
        Padding(
          padding: Theme.of(context).extension<TokenPadding>()?.mainPadding ?? const EdgeInsets.all(16),
          child: const SizedBox(
            width: 300,
            height: 60,
            child: TextField(
              decoration: InputDecoration(
                helperText: 'Sem ícone prefixo',
                hintText: 'Digite texto...',
              ),
            ),
          ),
        ),
        Padding(
          padding: Theme.of(context).extension<TokenPadding>()?.mainPadding ?? const EdgeInsets.all(16),
          child: SizedBox(
            width: 300,
            height: 60,
            child: TextField(
              style: Theme.of(context).textTheme.bodyLarge,
              decoration: const InputDecoration(
                helperText: 'Sem ícone prefixo',
                hintText: 'Digite texto...',
                suffixIcon: Icon(Icons.person),
              ),
            ),
          ),
        ),
        Padding(
          padding: Theme.of(context).extension<TokenPadding>()?.mainPadding ?? const EdgeInsets.all(16),
          child: SizedBox(
            width: 300,
            height: 40,
            child: TextField(
              style: Theme.of(context).textTheme.bodyLarge,
              decoration: const InputDecoration(
                hintText: 'Digite texto...',
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.person),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
