import 'package:design_sos/design_sos.dart';

abstract class ITheme {
  final TokenColors tokenColors;
  final TokenTextTheme tokenTextTheme;
  final TokenPadding tokenPadding;
  final TokenButtonsTheme tokenButtonsTheme;
  final TokenCardTheme tokenCardTheme;
  final TokenAppBarTheme tokenAppBarTheme;
  final TokenDialogTheme tokenDialogTheme;
  final TokenBottomSheetTheme tokenBottomSheetTheme;
  final TokenDrawerTheme tokenDrawerTheme;
  final TokenDividerTheme tokenDividerTheme;
  final TokenInputDecorationTheme tokenInputDecorationTheme;
  final TokenBottomNavigationBarTheme tokenBottomNavigationBarTheme;
  final TokenIconTheme tokenIconTheme;
  ITheme({
    required this.tokenColors,
    required this.tokenTextTheme,
    required this.tokenPadding,
    required this.tokenButtonsTheme,
    required this.tokenCardTheme,
    required this.tokenAppBarTheme,
    required this.tokenDialogTheme,
    required this.tokenBottomSheetTheme,
    required this.tokenDrawerTheme,
    required this.tokenDividerTheme,
    required this.tokenInputDecorationTheme,
    required this.tokenBottomNavigationBarTheme,
    required this.tokenIconTheme,
  });
}
