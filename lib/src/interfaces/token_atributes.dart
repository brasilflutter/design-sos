import 'package:design_sos/design_sos.dart';
import 'package:flutter/cupertino.dart';

mixin TokenAttributes<T> {
  String get title;

  ExampleItem buildExample(BuildContext context) => ExampleItem(child: toExample(context));

  Widget toExample(BuildContext context);

  List<T> toList() => <T>[];
}
