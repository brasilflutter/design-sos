import 'package:design_sos/design_sos.dart';
import 'package:flutter/material.dart';

class TokenButtonsTheme with TokenAttributes {
  final TokenElevatedButtonTheme tokenElevatedButtonTheme;
  final TokenOutlinedButtonTheme tokenOutlinedButtonTheme;
  final TokenTextButtonTheme tokenTextButtonTheme;

  TokenButtonsTheme({required this.tokenElevatedButtonTheme, required this.tokenOutlinedButtonTheme, required this.tokenTextButtonTheme});

  factory TokenButtonsTheme.fromJson(Map<String, dynamic> json, {TextStyle? tokenElevatedButtonTextStyle, TextStyle? tokenOutlinedButtonTextStyle}) => TokenButtonsTheme(
      tokenElevatedButtonTheme: TokenElevatedButtonTheme.fromJson(json['tokenElevatedButtonTheme'], textStyle: tokenElevatedButtonTextStyle),
      tokenOutlinedButtonTheme: TokenOutlinedButtonTheme.fromJson(json['tokenOutlinedButtonTheme'], textStyle: tokenOutlinedButtonTextStyle),
      tokenTextButtonTheme: TokenTextButtonTheme.fromJson(json['tokenTextButtonTheme']));

  @override
  String get title => 'TokenButtonsTheme';

  @override
  Widget toExample(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        tokenElevatedButtonTheme.toExample(context),
        SizedBox(height: Theme.of(context).extension<TokenPadding>()!.verticalMediumSpacing),
        tokenOutlinedButtonTheme.toExample(context),
        SizedBox(height: Theme.of(context).extension<TokenPadding>()!.verticalMediumSpacing),
        tokenTextButtonTheme.toExample(context),
      ],
    );
  }
}
