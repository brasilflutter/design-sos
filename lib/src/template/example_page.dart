import 'package:design_sos/design_sos.dart';
import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget {
  final TokenAttributes exampleItem;
  final String exampleTitle;
  final bool hasToCenter;
  const ExamplePage({required this.exampleItem, required this.exampleTitle, this.hasToCenter = true, super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: Theme.of(context).extension<TokenPadding>()!.mainPadding.copyWith(top: 0, bottom: 0),
            child: Text(widget.exampleTitle, style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.scrim)),
          ),
          SizedBox(height: Theme.of(context).extension<TokenPadding>()!.verticalMediumSpacing),
          Expanded(
              child: Card(
                  color: Colors.white,
                  elevation: 0,
                  child: Padding(
                    padding: Theme.of(context).extension<TokenPadding>()!.cardPadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('ShowRoom', style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w900, color: Theme.of(context).colorScheme.scrim)),
                        const Divider(),
                        SizedBox(
                          height: Theme.of(context).extension<TokenPadding>()!.verticalMediumSpacing,
                        ),
                        Expanded(child: widget.hasToCenter ? Center(child: widget.exampleItem.buildExample(context)) : widget.exampleItem.buildExample(context)),
                      ],
                    ),
                  ))),
        ],
      ),
    );
  }
}
