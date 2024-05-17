import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:design_sos/design_sos.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final String jsonString = await rootBundle.loadString('assets/theme.json');
  final Map<String, dynamic> jsonMap = json.decode(jsonString);
  final theme = ServerDrivenTheme.fromJson(jsonMap);
  runApp(MyApp(theme: theme));
}

class MyApp extends StatelessWidget {
  final ITheme theme;
  const MyApp({super.key, required this.theme});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo UI Design System',
      theme: ThemeManager.createThemeData(theme: theme),
      home: HomeMyDesign(theme: theme),
    );
  }
}

class HomeMyDesign extends StatefulWidget {
  final ITheme theme;
  const HomeMyDesign({super.key, required this.theme});

  @override
  State<HomeMyDesign> createState() => _HomeMyDesignState();
}

class _HomeMyDesignState extends State<HomeMyDesign> {
  final pageController = PageController();
  final int delayedAmount = 500;
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Design'),
      ),
      body: PageView(
        controller: pageController,
        scrollBehavior: const ScrollBehavior(),
        scrollDirection: Axis.vertical,
        children: [
          ExamplePage(exampleItem: widget.theme.tokenColors, exampleTitle: widget.theme.tokenColors.title),
          ExamplePage(exampleItem: widget.theme.tokenAppBarTheme, exampleTitle: widget.theme.tokenAppBarTheme.title),
          ExamplePage(exampleItem: widget.theme.tokenBottomNavigationBarTheme, exampleTitle: widget.theme.tokenBottomNavigationBarTheme.title),
          ExamplePage(exampleItem: widget.theme.tokenBottomSheetTheme, exampleTitle: widget.theme.tokenBottomSheetTheme.title),
          ExamplePage(exampleItem: widget.theme.tokenButtonsTheme, exampleTitle: widget.theme.tokenButtonsTheme.title),
          ExamplePage(exampleItem: widget.theme.tokenCardTheme, exampleTitle: widget.theme.tokenCardTheme.title),
          ExamplePage(exampleItem: widget.theme.tokenDialogTheme, exampleTitle: widget.theme.tokenDialogTheme.title),
          ExamplePage(exampleItem: widget.theme.tokenDividerTheme, exampleTitle: widget.theme.tokenDividerTheme.title),
          ExamplePage(exampleItem: widget.theme.tokenDrawerTheme, exampleTitle: widget.theme.tokenDrawerTheme.title),
          ExamplePage(exampleItem: widget.theme.tokenIconTheme, exampleTitle: widget.theme.tokenIconTheme.title),
          ExamplePage(exampleItem: widget.theme.tokenInputDecorationTheme, exampleTitle: widget.theme.tokenInputDecorationTheme.title),
        ],
      ),
    );
  }
}
