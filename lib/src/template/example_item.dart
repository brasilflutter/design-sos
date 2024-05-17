import 'package:flutter/material.dart';

class ExampleItem extends StatelessWidget {
  final Widget child;
  const ExampleItem({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
