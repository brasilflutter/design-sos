import 'package:design_sos/design_sos.dart';

class ServerDrivenTheme extends ITheme {
  ServerDrivenTheme({
    required super.tokenColors,
    required super.tokenTextTheme,
    required super.tokenPadding,
    required super.tokenButtonsTheme,
    required super.tokenCardTheme,
    required super.tokenAppBarTheme,
    required super.tokenDialogTheme,
    required super.tokenBottomSheetTheme,
    required super.tokenDrawerTheme,
    required super.tokenDividerTheme,
    required super.tokenInputDecorationTheme,
    required super.tokenBottomNavigationBarTheme,
    required super.tokenIconTheme,
  });

  factory ServerDrivenTheme.fromJson(Map<String, dynamic> json) {
    return ServerDrivenTheme(
      tokenColors: TokenColors.fromJson(json['iTheme']['tokenColors'] ?? {}),
      tokenPadding: TokenPadding.fromJson(json['iTheme']['tokenPadding'] ?? {}),
      tokenTextTheme: TokenTextTheme.fromJson(json['iTheme']['tokenTextTheme'] ?? {}),
      tokenButtonsTheme: TokenButtonsTheme.fromJson(json['iTheme']['tokenButtonsTheme'] ?? {}),
      tokenAppBarTheme: TokenAppBarTheme.fromJson(json['iTheme']['tokenAppBarTheme'] ?? {}),
      tokenCardTheme: TokenCardTheme.fromJson(json['iTheme']['tokenCardTheme'] ?? {}),
      tokenDialogTheme: TokenDialogTheme.fromJson(json['iTheme']['tokenDialogTheme'] ?? {}),
      tokenBottomSheetTheme: TokenBottomSheetTheme.fromJson(json['iTheme']['tokenBottomSheetTheme'] ?? {}),
      tokenDrawerTheme: TokenDrawerTheme.fromJson(json['iTheme']['tokenDrawerTheme'] ?? {}),
      tokenDividerTheme: TokenDividerTheme.fromJson(json['iTheme']['tokenDividerTheme'] ?? {}),
      tokenInputDecorationTheme: TokenInputDecorationTheme.fromJson(json['iTheme']['tokenInputDecorationTheme'] ?? {}),
      tokenBottomNavigationBarTheme: TokenBottomNavigationBarTheme.fromJson(json['iTheme']['tokenBottomNavigationBarTheme'] ?? {}),
      tokenIconTheme: TokenIconTheme.fromJson(json['iTheme']['tokenIconTheme'] ?? {}),
    );
  }
}
