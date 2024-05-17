import 'package:flutter/material.dart';
import 'package:design_sos/src/utils/border_radius_cast.dart';
import 'package:design_sos/src/utils/color_conversion.dart';
import 'package:design_sos/design_sos.dart';

class TokenDialogTheme extends DialogTheme with TokenAttributes {
  TokenDialogTheme({
    required Color super.backgroundColor,
    super.elevation,
    super.iconColor,
    BorderRadius? borderRadius,
  }) : super(shape: RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.zero));

  factory TokenDialogTheme.fromJson(Map<String, dynamic> json) {
    return TokenDialogTheme(
      backgroundColor: convertColor(json['backgroundColor'] ?? '') ?? Colors.white,
      elevation: json['elevation'] ?? 24,
      iconColor: convertColor(json['iconColor'] ?? ''),
      borderRadius: borderRadiusFromJson(json['borderRadius'] ?? {}),
    );
  }

  @override
  String get title => 'TokenDialogTheme';

  @override
  Widget toExample(BuildContext context) {
    return ElevatedButton(
        onPressed: () => showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(
                    'Dialog Example',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Você está prestes a sair do app. Deseja continuar?',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      SizedBox(
                        height: Theme.of(context).extension<TokenPadding>()!.verticalMediumSpacing,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(onPressed: () => Navigator.pop(context), child: const Text('CANCELAR')),
                          TextButton(onPressed: () => Navigator.pop(context), child: const Text('OK')),
                        ],
                      ),
                    ],
                  ),
                )),
        child: const Text('ABRIR DIALOG'));
  }
}
