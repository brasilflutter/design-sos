import 'package:flutter/material.dart';
import 'package:design_sos/src/utils/border_radius_cast.dart';
import 'package:design_sos/src/utils/color_conversion.dart';
import 'package:design_sos/design_sos.dart';

class TokenBottomSheetTheme extends BottomSheetThemeData with TokenAttributes {
  TokenBottomSheetTheme({required Color super.backgroundColor, super.elevation, super.modalBackgroundColor, super.modalElevation, BorderRadius? borderRadius})
      : super(shape: RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.zero));

  factory TokenBottomSheetTheme.fromJson(Map<String, dynamic> json) => TokenBottomSheetTheme(
      backgroundColor: convertColor(json['backgroundColor'] ?? '') ?? Colors.white,
      elevation: json['elevation'] ?? 24,
      modalBackgroundColor: convertColor(json['modalBackgroundColor'] ?? ''),
      modalElevation: json['modalElevation'] ?? 24,
      borderRadius: borderRadiusFromJson(json['borderRadius'] ?? {}));

  @override
  String get title => 'TokenBottomSheetTheme';

  @override
  Widget toExample(BuildContext context) {
    return ElevatedButton(
        onPressed: () => showModalBottomSheet(
            context: context,
            builder: (context) => BottomSheet(
                onClosing: () {},
                builder: (context) => Padding(
                      padding: Theme.of(context).extension<TokenPadding>()!.mainPadding,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text('Exemplo BottomSheet', style: Theme.of(context).textTheme.headlineMedium)],
                      ),
                    ))),
        child: const Text('ABRIR BOTTOMSHEET'));
  }
}
