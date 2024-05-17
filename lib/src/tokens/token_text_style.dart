import 'package:design_sos/design_sos.dart';
import 'package:design_sos/src/extensions/text_style_extension.dart';
import 'package:flutter/material.dart';

class TokenTextTheme extends TextTheme with TokenAttributes {
  TokenTextTheme({
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? displaySmall,
    TextStyle? headlineLarge,
    TextStyle? headlineMedium,
    TextStyle? headlineSmall,
    TextStyle? labelLarge,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
    TextStyle? overline,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
  });

  factory TokenTextTheme.fromJson(Map<String, dynamic> json) {
    return TokenTextTheme(
      bodyLarge: const TextStyle().fromJson(json['bodyLarge']) ?? const TextStyle(),
      bodyMedium: const TextStyle().fromJson(json['bodyMedium']) ?? const TextStyle(),
      bodySmall: const TextStyle().fromJson(json['bodySmall']) ?? const TextStyle(),
      displayLarge: const TextStyle().fromJson(json['displayLarge']) ?? const TextStyle(),
      displayMedium: const TextStyle().fromJson(json['displayMedium']) ?? const TextStyle(),
      displaySmall: const TextStyle().fromJson(json['displaySmall']) ?? const TextStyle(),
      headlineLarge: const TextStyle().fromJson(json['headlineLarge']) ?? const TextStyle(),
      headlineMedium: const TextStyle().fromJson(json['headlineMedium']) ?? const TextStyle(),
      headlineSmall: const TextStyle().fromJson(json['headlineSmall']) ?? const TextStyle(),
      labelLarge: const TextStyle().fromJson(json['labelLarge']) ?? const TextStyle(),
      labelMedium: const TextStyle().fromJson(json['labelMedium']) ?? const TextStyle(),
      labelSmall: const TextStyle().fromJson(json['labelSmall']) ?? const TextStyle(),
      overline: const TextStyle().fromJson(json['overline']) ?? const TextStyle(),
      titleLarge: const TextStyle().fromJson(json['titleLarge']) ?? const TextStyle(),
      titleMedium: const TextStyle().fromJson(json['titleMedium']) ?? const TextStyle(),
      titleSmall: const TextStyle().fromJson(json['titleSmall']) ?? const TextStyle(),
    );
  }

  @override
  String get title => 'tokenTextTheme';

  @override
  Widget toExample(BuildContext context) {
    return const _TextExample();
  }
}

class _TextExample extends StatelessWidget {
  const _TextExample();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: Theme.of(context).extension<TokenPadding>()?.mainPadding ?? const EdgeInsets.all(16),
          child: Text('Display Large', style: Theme.of(context).textTheme.displayLarge),
        ),
        Padding(
          padding: Theme.of(context).extension<TokenPadding>()?.mainPadding ?? const EdgeInsets.all(16),
          child: Text('Display Medium', style: Theme.of(context).textTheme.displayMedium),
        ),
        Padding(
          padding: Theme.of(context).extension<TokenPadding>()?.mainPadding ?? const EdgeInsets.all(16),
          child: Text('Display Small', style: Theme.of(context).textTheme.displaySmall),
        ),
        Padding(
          padding: Theme.of(context).extension<TokenPadding>()?.mainPadding ?? const EdgeInsets.all(16),
          child: Text('Headline Large', style: Theme.of(context).textTheme.headlineLarge),
        ),
        Padding(
          padding: Theme.of(context).extension<TokenPadding>()?.mainPadding ?? const EdgeInsets.all(16),
          child: Text('Headline Medium', style: Theme.of(context).textTheme.headlineMedium),
        ),
        Padding(
          padding: Theme.of(context).extension<TokenPadding>()?.mainPadding ?? const EdgeInsets.all(16),
          child: Text('Headline Small', style: Theme.of(context).textTheme.headlineSmall),
        ),
        Padding(
          padding: Theme.of(context).extension<TokenPadding>()?.mainPadding ?? const EdgeInsets.all(16),
          child: Text('Title Large', style: Theme.of(context).textTheme.titleLarge),
        ),
        Padding(
          padding: Theme.of(context).extension<TokenPadding>()?.mainPadding ?? const EdgeInsets.all(16),
          child: Text('Title Medium', style: Theme.of(context).textTheme.titleMedium),
        ),
        Padding(
          padding: Theme.of(context).extension<TokenPadding>()?.mainPadding ?? const EdgeInsets.all(16),
          child: Text('Title Small', style: Theme.of(context).textTheme.titleSmall),
        ),
        Padding(
          padding: Theme.of(context).extension<TokenPadding>()?.mainPadding ?? const EdgeInsets.all(16),
          child: Text('Label Large', style: Theme.of(context).textTheme.labelLarge),
        ),
        Padding(
          padding: Theme.of(context).extension<TokenPadding>()?.mainPadding ?? const EdgeInsets.all(16),
          child: Text('Label Medium', style: Theme.of(context).textTheme.labelMedium),
        ),
        Padding(
          padding: Theme.of(context).extension<TokenPadding>()?.mainPadding ?? const EdgeInsets.all(16),
          child: Text('Label Small', style: Theme.of(context).textTheme.labelSmall),
        ),
        Padding(
          padding: Theme.of(context).extension<TokenPadding>()?.mainPadding ?? const EdgeInsets.all(16),
          child: Text('Body Large', style: Theme.of(context).textTheme.bodyLarge),
        ),
        Padding(
          padding: Theme.of(context).extension<TokenPadding>()?.mainPadding ?? const EdgeInsets.all(16),
          child: Text('Body Medium', style: Theme.of(context).textTheme.bodyMedium),
        ),
        Padding(
          padding: Theme.of(context).extension<TokenPadding>()?.mainPadding ?? const EdgeInsets.all(16),
          child: Text('Body Small', style: Theme.of(context).textTheme.bodySmall),
        ),
      ],
    );
  }
}
