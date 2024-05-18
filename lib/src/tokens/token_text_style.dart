import 'package:design_sos/design_sos.dart';
import 'package:design_sos/src/extensions/text_style_extension.dart';
import 'package:flutter/material.dart';

class TokenTextTheme extends TextTheme with TokenAttributes {
  TokenTextTheme({
    super.bodyLarge,
    super.bodyMedium,
    super.bodySmall,
    super.displayLarge,
    super.displayMedium,
    super.displaySmall,
    super.headlineLarge,
    super.headlineMedium,
    super.headlineSmall,
    super.labelLarge,
    super.labelMedium,
    super.labelSmall,
    super.titleLarge,
    super.titleMedium,
    super.titleSmall,
  });
  factory TokenTextTheme.fromJson(Map<String, dynamic> json) {
    return TokenTextTheme(
      bodyLarge: const TextStyle().fromJson(json['bodyLarge']),
      bodyMedium: const TextStyle().fromJson(json['bodyMedium']),
      bodySmall: const TextStyle().fromJson(json['bodySmall']),
      displayLarge: const TextStyle().fromJson(json['displayLarge']),
      displayMedium: const TextStyle().fromJson(json['displayMedium']),
      displaySmall: const TextStyle().fromJson(json['displaySmall']),
      headlineLarge: const TextStyle().fromJson(json['headlineLarge']),
      headlineMedium: const TextStyle().fromJson(json['headlineMedium']),
      headlineSmall: const TextStyle().fromJson(json['headlineSmall']),
      labelLarge: const TextStyle().fromJson(json['labelLarge']),
      labelMedium: const TextStyle().fromJson(json['labelMedium']),
      labelSmall: const TextStyle().fromJson(json['labelSmall']),
      titleLarge: const TextStyle().fromJson(json['titleLarge']),
      titleMedium: const TextStyle().fromJson(json['titleMedium']),
      titleSmall: const TextStyle().fromJson(json['titleSmall']),
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
